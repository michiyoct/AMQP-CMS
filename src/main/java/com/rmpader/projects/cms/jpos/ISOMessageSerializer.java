package com.rmpader.projects.cms.jpos;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

import javax.xml.bind.DatatypeConverter;

import org.jpos.iso.ISOMsg;
import org.jpos.iso.ISOPackager;
import org.jpos.iso.ISOUtil;
import org.springframework.core.serializer.Deserializer;
import org.springframework.core.serializer.Serializer;

public class ISOMessageSerializer implements Deserializer<ISOMsg>,
		Serializer<ISOMsg> {

	public static final int DEFAULT_LENGTH_HEADER_SIZE = 4;

	private final int lengthHeaderSize;
	private final ISOPackager packager;

	public ISOMessageSerializer(ISOPackager packager) {
		this(DEFAULT_LENGTH_HEADER_SIZE, packager);
	}

	public ISOMessageSerializer(int size, ISOPackager packager) {
		this.lengthHeaderSize = size;
		this.packager = packager;
	}

	@Override
	public void serialize(ISOMsg object, OutputStream outputStream)
			throws IOException {
		try {
			object.setPackager(packager);
			byte[] bytes = object.pack();
			byte[] headerBytes =ISOUtil.zeropad(Integer.toString(bytes.length), lengthHeaderSize).getBytes();
			BufferedOutputStream stream = new BufferedOutputStream(
					outputStream, bytes.length + lengthHeaderSize);
			stream.write(ByteBuffer.allocate(lengthHeaderSize).put(headerBytes)
					.array());
			stream.write(bytes);
			stream.flush();
		} catch (Exception e) {
			throw new IOException("Failed to serialize ISO Message", e);
		}
	}

	@Override
	public ISOMsg deserialize(InputStream inputStream) throws IOException {
		try {
			byte[] headerBytes = new byte[lengthHeaderSize];
			int readBytes = inputStream.read(headerBytes);
			if (readBytes == lengthHeaderSize) {
				int messageLength = Integer.valueOf(DatatypeConverter
						.printHexBinary(headerBytes));
				byte[] bytes = new byte[messageLength];
				inputStream.read(bytes);
				ISOMsg msg = packager.createISOMsg();
				msg.setPackager(packager);
				msg.unpack(bytes);
				return msg;
			} else {
				// DO something
				return null;
			}
		} catch (Exception e) {
			throw new IOException("Failed to deserialize ISO Message", e);
		}

	}

	public int getLengthHeaderSize() {
		return lengthHeaderSize;
	}

}
