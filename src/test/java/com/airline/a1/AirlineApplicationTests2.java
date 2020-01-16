package com.airline.a1;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.airline.a1.api.AirportMapper;
import com.airline.a1.api.AirportVO;

@SpringBootTest
class AirlineApplicationTests2 {

	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private AirportMapper airportMapper;
	
	
	//@Test
	void contextLoads() throws Exception {
	       StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.co.kr/service/rest/serviceLine/serviceLines"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=iEDBbpkkNQN604mbzvOvbCbGl0rXiyk4SdUBO%2FqhREGGDL5QrF2SrrZzf3l2%2BUNCeiBD97RtxaPQZaL9VqVR%2Fg%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("schStDate","UTF-8") + "=" + URLEncoder.encode("20200115", "UTF-8")); /*YYYYMMDD*/
	        urlBuilder.append("&" + URLEncoder.encode("schEdDate","UTF-8") + "=" + URLEncoder.encode("20200115", "UTF-8")); /*YYYYMMDD*/
	        urlBuilder.append("&" + URLEncoder.encode("schLineType","UTF-8") + "=" + URLEncoder.encode("D", "UTF-8")); /*국제선 = I 국내선 = D */
	        urlBuilder.append("&" + URLEncoder.encode("schAirport","UTF-8") + "=" + URLEncoder.encode("GMP", "UTF-8")); /*김포공항=GMP 제주공항=CJU 김해공항=PUS 등 */
	        urlBuilder.append("&" + URLEncoder.encode("serviceKey","UTF-8") + "=" + URLEncoder.encode("iEDBbpkkNQN604mbzvOvbCbGl0rXiyk4SdUBO%2FqhREGGDL5QrF2SrrZzf3l2%2BUNCeiBD97RtxaPQZaL9VqVR%2Fg%3D%3D", "UTF-8")); /*인증키*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
	        System.out.println(sb.toString());
	}
	
	
	//@Test
	void apiTest2() throws Exception {
		// 공항코드
		BufferedReader br = null;
		try {
			String urlstr = "http://openapi.airport.co.kr/service/rest/serviceLine/serviceLines?serviceKey=iEDBbpkkNQN604mbzvOvbCbGl0rXiyk4SdUBO%2FqhREGGDL5QrF2SrrZzf3l2%2BUNCeiBD97RtxaPQZaL9VqVR%2Fg%3D%3D&schStDate=20200115&schEdDate=20200116&schLineType=D&schAirport=GMP&numOfRows=100";
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
					System.out.println("######################");
					System.out.println(eElement.getTextContent());
					System.out.println("출발공항명  : " + getTagValue("arp", eElement));
					System.out.println("도착공항명 : " + getTagValue("odp", eElement));
					System.out.println("국내/국제구분 : " + getTagValue("tof", eElement));
					System.out.println("운항거리 : " + getTagValue("km", eElement));
					System.out.println("운항시간 : " + getTagValue("time", eElement));
					
					List<AirportVO> air1 = airportMapper.airportList();
					List<AirportVO> air2 = airportMapper.airportList();
					
					for(AirportVO a1 : air1) {
						
						System.out.println(a1.getCityCode());
						if(getTagValue("arp", eElement).equals(a1.getCityCode())) {
							System.out.println("찾음");
							System.out.println("출발공항명  : " + getTagValue("arp", eElement));
							System.out.println(a1.getCityCode());
							
							for(AirportVO a2 : air2) {
								
								System.out.println(a2.getCityCode());
								if(getTagValue("odp", eElement).equals(a2.getCityCode())) {
									
									System.out.println("완전 찾았다.");
										
								}
								
							}

							
							
							
						}
						
						
						
					}
					
					
					
					
					
					
					
					
					
					
					
						
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
