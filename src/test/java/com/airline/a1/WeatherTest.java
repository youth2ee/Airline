package com.airline.a1;

import static org.junit.jupiter.api.Assertions.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.airline.a1.weather.weatherMapper;
import com.airline.a1.weather.WeatherVO;

@SpringBootTest
class WeatherTest {
	
	@Autowired
	private weatherMapper weatherMapper;
	

	@Test
	void weatherTest() throws Exception {

		BufferedReader br = null;
		try {
			String urlstr = "http://openapi.airport.kr/openapi/service/StatusOfPassengerWeahter/getPassengerDeparturesW?"
					+ "ServiceKey=WawB4BvQyTUrO2veQ4mgacnM1LpfU4QUq36PmLx1XcpWAuboGxvPNuxfsazlAEF9zgD7bSA0Fx05q3e9FBcodQ%3D%3D";
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
			String result = "";
			String line;
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			Document doc = dBuilder.parse(urlstr);
			doc.getDocumentElement().normalize();
			NodeList nList = doc.getElementsByTagName("item");
			System.out.println("Root element: " + doc.getDocumentElement().getNodeName());
			System.out.println("파싱할 리스트 수 : " + nList.getLength());
			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) nNode;
					
					
					WeatherVO weatherVO = new WeatherVO();
					weatherVO.setApName(getTagValue("airline", eElement));
					weatherVO.setDepMintem(Integer.parseInt(getTagValue("mintem", eElement)));
					weatherVO.setDepMaxtem(Integer.parseInt(getTagValue("maxtem", eElement)));
//					weatherVO.setDepMintem(getTagValue("mintem", eElement));
					
					weatherMapper.weatherInsert(weatherVO);
					  
					  System.out.println("######################");
					  
					  // System.out.println(eElement.getTextContent());
					  System.out.println("항공명  : " + getTagValue("airline", eElement));
					  
				}
			}
			System.out.println(result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
	
	private static String getTagValue(String tag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		if (nValue == null)
			return null;
		return nValue.getNodeValue();
	}
}
