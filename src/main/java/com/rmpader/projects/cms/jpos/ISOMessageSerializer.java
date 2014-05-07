package com.rmpader.projects.cms.jpos;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.jpos.iso.ISOMsg;
import org.springframework.core.serializer.Deserializer;
import org.springframework.core.serializer.Serializer;

public class ISOMessageSerializer implements Deserializer<ISOMsg>,
		Serializer<ISOMsg> {

	@Override
	public void serialize(ISOMsg object, OutputStream outputStream)
			throws IOException {
		try {
			byte[] bytes = object.pack();
			BufferedOutputStream stream = new BufferedOutputStream(outputStream,bytes.length);
			stream.write(bytes);
			stream.flush();
		} catch (Exception e) {
			throw new IOException("Failed to serialize ISO Message", e);
		}
	}

	@Override
	public ISOMsg deserialize(InputStream inputStream) throws IOException {
		// TODO Auto-generated method stub
		return null;
	}

}
