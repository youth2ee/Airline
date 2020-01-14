package com.airline.a1;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

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

@SpringBootTest
class AirlineApplicationTests {

	@Autowired
	private DataSource dataSource;
	@Test
	void apiTest4() throws Exception {
		// 항공정보 + 운임
		BufferedReader br = null;
		try {
			String urlstr = "http://openapi.airport.kr/openapi/service/FacilitiesInformation/getFacilitesInfo?serviceKey=ocUWaBXkUfn7dTwV69oHksQQ4C4g9sEm41EWbQU3DNWLYSsd%2BewFHSMTGYGwGi5kcBCKXPGHARowuE0BgEsokg%3D%3D";
		
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
			String result = "";
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
					System.out.println("대분류 : " + getTagValue("lcategorynm", eElement));
					System.out.println("중분류 : " + getTagValue("mcategorynm", eElement));
					System.out.println("소분류 : " + getTagValue("scategorynm", eElement));
					System.out.println("서비스시간 : " + getTagValue("servicetime", eElement));
					System.out.println("지역구분 : " + getTagValue("lcduty", eElement));	

				}
			}
			System.out.println(result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	
	
	//@Test
	void apiTest3() throws Exception {
		// 항공정보 + 운임
		BufferedReader br = null;
		try {
			String urlstr = "http://openapi.tago.go.kr/openapi/service/DmstcFlightNvgInfoService/getFlightOpratInfoList?"
					+ "serviceKey=ocUWaBXkUfn7dTwV69oHksQQ4C4g9sEm41EWbQU3DNWLYSsd%2BewFHSMTGYGwGi5kcBCKXPGHARowuE0BgEsokg%3D%3D&"
					+ "numOfRows=100&"
					+ "depAirportId=NAARKSS" // 출발공항
					+ "&arrAirportId=NAARKPC&"  // 도착공항 
					+ "depPlandTime=20200113&" // 출발일
					+ "airlineId=AAR"; // 항공사ID
		
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
			String result = "";
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			System.out.println(urlstr);
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
					System.out.println("항공편명 : " + getTagValue("vihicleId", eElement));
					System.out.println("항공사명 : " + getTagValue("airlineNm", eElement));
					System.out.println("출발시간 : " + getTagValue("depPlandTime", eElement));
					System.out.println("도착시간 : " + getTagValue("arrPlandTime", eElement));
					System.out.println("일반석운임 : " + getTagValue("economyCharge", eElement));
					System.out.println("비즈니석운임 : " + getTagValue("prestigeCharge", eElement));
					System.out.println("출발공항 : " + getTagValue("depAirportNm", eElement));
					System.out.println("도착공항 : " + getTagValue("arrAirportNm", eElement));

				}
			}
			System.out.println(result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	// @Test
	void apiTest2() throws Exception {
		// 공항코드
		BufferedReader br = null;
		try {
			String urlstr = "http://openapi.airport.co.kr/service/rest/AirportCodeList/getAirportCodeList?"
					+ "ServiceKey=ocUWaBXkUfn7dTwV69oHksQQ4C4g9sEm41EWbQU3DNWLYSsd%2BewFHSMTGYGwGi5kcBCKXPGHARowuE0BgEsokg%3D%3D&"
					+ "numOfRows=1000";
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
					// System.out.println(eElement.getTextContent());
					System.out.println("도시명  : " + getTagValue("cityKor", eElement));
					System.out.println("공항코드 : " + getTagValue("cityCode", eElement));

				}
			}
			System.out.println(result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	// @Test
	void apiTest() throws Exception {
		// 국내항공운항정보
		BufferedReader br = null;
		try {
			String urlstr = "http://openapi.airport.co.kr/service/rest/FlightScheduleList/getDflightScheduleList?"
					+ "ServiceKey=ocUWaBXkUfn7dTwV69oHksQQ4C4g9sEm41EWbQU3DNWLYSsd%2BewFHSMTGYGwGi5kcBCKXPGHARowuE0BgEsokg%3D%3D&"
					+ "schDeptCityCode=GMP&" + "schArrvCityCode=CJU&" + "pageNo=1&" + "schDate=20200113&"
					+ "numOfRows=100";
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
					// System.out.println(eElement.getTextContent());
					System.out.println("항공편명  : " + getTagValue("domesticNum", eElement));
					System.out.println("도착공항  : " + getTagValue("arrivalcity", eElement));
					System.out.println("출발시간  : " + getTagValue("domesticStartTime", eElement));
					System.out.println("도착시간 : " + getTagValue("domesticArrivalTime", eElement));
					System.out.println("운항시작일  : " + getTagValue("domesticStdate", eElement));
					System.out.println("운항종료일  : " + getTagValue("domesticEddate", eElement));
					System.out.println("월요일  : " + getTagValue("domesticMon", eElement));
					System.out.println("화요일  : " + getTagValue("domesticTue", eElement));
					System.out.println("수요일  : " + getTagValue("domesticWed", eElement));
					System.out.println("목요일  : " + getTagValue("domesticThu", eElement));
					System.out.println("금요일  : " + getTagValue("domesticFri", eElement));
					System.out.println("토요일  : " + getTagValue("domesticSat", eElement));
					System.out.println("일요일  : " + getTagValue("domesticSun", eElement));

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

	@Test
	void contextLoads() throws Exception {
		assertNotNull(dataSource.getConnection());
	}

}
