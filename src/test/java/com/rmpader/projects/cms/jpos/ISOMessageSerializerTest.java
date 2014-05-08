package com.rmpader.projects.cms.jpos;

import static org.junit.Assert.assertEquals;

import javax.xml.bind.DatatypeConverter;

import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;
import org.jpos.iso.packager.GenericPackager;
import org.junit.Before;
import org.junit.Test;

import com.sun.xml.internal.messaging.saaj.util.ByteInputStream;
import com.sun.xml.internal.messaging.saaj.util.ByteOutputStream;

public class ISOMessageSerializerTest {

	private ISOMessageSerializer serializer;
	private ISOMessageSerializer deserializer;
	private String hexString;
	private ISOMsg msg;

	@Before
	public void setup() throws ISOException {
		serializer = new ISOMessageSerializer(new GenericPackager(this
				.getClass().getResource("packager.xml").getPath()));
		deserializer = serializer;
		hexString = "00400800202000000080000000000000000129110001";

		msg = new ISOMsg("0800");
		msg.set(3, "000000");
		msg.set(11, "000001");
		msg.set(41, "29110001");
	}

	@Test
	public void testSerialize() throws Exception {
		ByteOutputStream stream = new ByteOutputStream(
				DatatypeConverter.parseHexBinary(hexString).length);
		serializer.serialize(msg, stream);

		assertEquals(hexString, new String(stream.getBytes()));
	}

	@Test
	public void testDeserialize() throws Exception {
		byte[] inputBytes = hexString.getBytes();
		ByteInputStream stream = new ByteInputStream(inputBytes,
				inputBytes.length);

		ISOMsg actual = (ISOMsg) deserializer.deserialize(stream);

		assertEqualISO(msg, actual);

	}
	
	private void assertEqualISO(ISOMsg expected, ISOMsg actual) throws ISOException{
		for(int i = 0; i <= 128; i++){
			assertEquals(expected.getValue(i),actual.getValue(i));
		}
	}

}
