package com.rmpader.projects.cms.jpos;

import static org.junit.Assert.assertEquals;

import java.io.IOException;

import javax.xml.bind.DatatypeConverter;

import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;
import org.jpos.iso.packager.GenericPackager;
import org.junit.Before;
import org.junit.Test;
import org.springframework.core.serializer.Deserializer;
import org.springframework.core.serializer.Serializer;

import com.sun.xml.internal.messaging.saaj.util.ByteOutputStream;

@SuppressWarnings({ "rawtypes", "unchecked" })
public class ISOMessageSerializerTest {

	private Serializer serializer = new ISOMessageSerializer();
	private Deserializer deserializer = new ISOMessageSerializer();

	@Test
	public void testSerialize() throws ISOException, IOException {
		ISOMsg msg = new ISOMsg("0800");
		msg.set(3, "000000");
		msg.set(11, "000001");
		msg.set(41, "29110001");
		
		msg.setPackager(new GenericPackager(this.getClass().getResource("packager.xml").getPath()));
		
		ByteOutputStream stream = new ByteOutputStream(msg.pack().length);
		serializer.serialize(msg, stream);

		assertEquals("0800202000000080000000000000000129110001", new String(stream.getBytes()));
	}
}
