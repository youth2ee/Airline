package com.airline.a1.park;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import java.io.BufferedReader;
import java.io.IOException;


@Service
public class ParkService {
	
	@Autowired
	private parkMapper parkMapper;
	
	public List<pReservationVO> parkCheck(pReservationVO pReservationVO) throws Exception{
		
		return parkMapper.parkCheck(pReservationVO);
	}
	
	//인천공항 주차정보 호출
	public void test() throws Exception{
		System.out.println("hello");
        StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.kr/openapi/service/StatusOfParking/getTrackingParking"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D"); /*Service Key*/
        //urlBuilder.append("&" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + URLEncoder.encode("QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D", "UTF-8")); /*공공데이터포털에서 받은 인증키*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("15", "UTF-8")); /*한 페이지 결과 수*/
      //  URL url = new URL(urlBuilder.toString());
        String urlstr = "http://openapi.airport.co.kr/service/rest/FlightScheduleList/getDflightScheduleList?"
				+ "ServiceKey=ocUWaBXkUfn7dTwV69oHksQQ4C4g9sEm41EWbQU3DNWLYSsd%2BewFHSMTGYGwGi5kcBCKXPGHARowuE0BgEsokg%3D%3D&"
				+ "schDeptCityCode=GMP&"
				+ "schArrvCityCode=CJU&"
				+ "pageNo=1&"
				+ "schDate=20200113&"
				+ "numOfRows=100";
        
        URL url = new URL(urlBuilder.toString());
        
        System.out.println(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "text/plain");
        conn.setRequestProperty("Access-Control-Allow-Origin", "*");
        conn.setRequestProperty("Access-Control-Allow-Methods", "GET");
        conn.setRequestProperty("Access-Control-Allow-Headers", "Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers, Authorization");
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
	
	
	//김포공항 주차정보 호출
	public void test2() throws Exception{
		  StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.co.kr/service/rest/AirportParking/airportparkingRT"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D"); /*Service Key*/
	        //urlBuilder.append("&" + URLEncoder.encode("serviceKey","UTF-8") + "=" + URLEncoder.encode("-", "UTF-8")); /*공공데이터포털에서 받은 인증키*/
	        urlBuilder.append("&" + URLEncoder.encode("schAirportCode","UTF-8") + "=" + URLEncoder.encode("GMP", "UTF-8")); /*공항명*/
	        URL url = new URL(urlBuilder.toString());
	        System.out.println(urlBuilder.toString());
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
	
	//김포호출2
	public List<ParkInfoVO> apiTest() throws Exception {
		
		BufferedReader br = null;
		List<ParkInfoVO> ar = new ArrayList<ParkInfoVO>();
		try {
			String urlstr = "http://openapi.airport.co.kr/service/rest/AirportParking/airportparkingRT?ServiceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D&schAirportCode=GMP";
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
					ParkInfoVO parkInfoVO = new ParkInfoVO();
					System.out.println("Airport Name  : " + getTagValue("aprEng", eElement));
					System.out.println("공항명  : " + getTagValue("aprKor", eElement));
					System.out.println("주차장명  : " + getTagValue("parkingAirportCodeName", eElement));
					System.out.println("주차공간 : " + getTagValue("parkingFullSpace", eElement));
					System.out.println("조회일  : " + getTagValue("parkingGetdate", eElement));
					System.out.println("조회시간  : " + getTagValue("parkingGettime", eElement));
					System.out.println("입고차량 수  : " + getTagValue("parkingIincnt", eElement));
					System.out.println("출고차량 수 : " + getTagValue("parkingIoutcnt", eElement));
					System.out.println("현주차수  : " + getTagValue("parkingIstay", eElement));
					parkInfoVO.setAprEng(getTagValue("aprEng", eElement));
					parkInfoVO.setAprKor(getTagValue("aprKor", eElement));
					parkInfoVO.setParkingName(getTagValue("parkingAirportCodeName", eElement));
					parkInfoVO.setParkingFullSpace(Integer.parseInt(getTagValue("parkingFullSpace", eElement)));
					parkInfoVO.setParkingGetdate(getTagValue("parkingGetdate", eElement));
					parkInfoVO.setParkingGettime(getTagValue("parkingGettime", eElement));
					parkInfoVO.setParkingIincnt(Integer.parseInt(getTagValue("parkingIincnt", eElement)));
					parkInfoVO.setParkingIoutcnt(Integer.parseInt(getTagValue("parkingIoutcnt", eElement)));
					parkInfoVO.setParkingIstay(Integer.parseInt(getTagValue("parkingIstay", eElement)));
					ar.add(parkInfoVO);
				} 
			} 
			System.out.println(result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return ar;
	}
	private static String getTagValue(String tag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		if (nValue == null)
			return null;
		return nValue.getNodeValue();
	}
	
	
}
