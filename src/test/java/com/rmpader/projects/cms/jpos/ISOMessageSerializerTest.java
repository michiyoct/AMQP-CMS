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
	
	@Test
	public void testMultipleDeserialize() throws Exception {
		hexString = "0034080020000000008000002000002911000100400800202000000080000000000000000129110001";
		byte[] inputBytes = hexString.getBytes();
		
		ByteInputStream stream = new ByteInputStream(inputBytes,
				inputBytes.length);
		
		ISOMsg actual1 = (ISOMsg) deserializer.deserialize(stream);
		ISOMsg actual2 = (ISOMsg) deserializer.deserialize(stream);
		
		ISOMsg msg2 = new ISOMsg("0800");
		msg2.set(3, "200000");
		msg2.set(41, "29110001");
		
		assertEqualISO(msg2, actual1);
		assertEqualISO(msg, actual2);

	}
	
	
	private void assertEqualISO(ISOMsg expected, ISOMsg actual) throws ISOException{
		for(int i = 0; i <= 128; i++){
			assertEquals(expected.getValue(i),actual.getValue(i));
		}
	}

}
