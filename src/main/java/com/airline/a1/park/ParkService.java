package com.airline.a1.park;

import org.jsoup.Jsoup;
import org.jsoup.select.Elements;
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
import java.sql.Date;
import java.sql.PseudoColumnUsage;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import java.io.BufferedReader;
import java.io.IOException;


@Service
public class ParkService {
	
	@Autowired
	private parkMapper parkMapper;
	
	public List<pReservationVO> parkfinalcheck(pReservationVO pReservationVO) throws Exception{
		return parkMapper.parkfinalcheck(pReservationVO);
	}
	
	public List<pReservationVO> parkOut() throws Exception{
		return parkMapper.parkOut();
	}
	
	public List<pReservationVO> parkIn() throws Exception{
		return parkMapper.parkIn();
	}
	
	public List<pInfoVO> parkInfo() throws Exception{
		return parkMapper.parkInfo();
	}
	
	public List<pReservationVO> today() throws Exception{
		return parkMapper.today();
	}
	
	public List<pReservationVO> lastMonthEarn(String pm) throws Exception{
		return parkMapper.lastMonthEarn(pm);
	}
	
	public List<pReservationVO> thisMonthEarn(String tm)throws Exception{
		return parkMapper.thisMonthEarn(tm);
	}
	
	public List<pReservationVO> FindMyResByCarNum(pReservationVO pReservationVO) throws Exception{
		System.out.println("서비스");
		return parkMapper.FindMyResByCarNum(pReservationVO);
	}
	public List<pReservationVO> FindMyResByPhone(pReservationVO pReservationVO) throws Exception{
		return parkMapper.FindMyResByPhone(pReservationVO);
	}
	
	public Integer parkCancel(pReservationVO pReservationVO)throws Exception{
		return parkMapper.parkCancel(pReservationVO);
	}
	
	public Integer parkCancel2(pReservationVO pReservationVO) throws Exception{
		return parkMapper.parkCancel2(pReservationVO);	
	}
	
	public void tttttt() throws Exception{
		
		 String url = "http://airport.koreatriptips.com/parking-lot.html";    //크롤링할 url지정
	     org.jsoup.nodes.Document doc = null; 
	     //Document에는 페이지의 전체 소스가 저장된다
		try {
            doc = Jsoup.connect(url).get();
           //Elements els = doc.select("body > table:nth-child(4) > tbody > tr:nth-child(3) > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > table");
            System.out.println(doc.toString());
           //System.out.println(els);
           //System.out.println(els.toString());
        } catch (IOException e) {
 
            e.printStackTrace();
 
        }
		
	}
	
	
	//주차예약
	public int resInsert(pReservationVO pReservationVO) throws Exception{
		
		return parkMapper.resInsert(pReservationVO);
	}
	
	
	//주차장조회
	public pInfoVO parkWhere(pInfoVO pInfoVO) throws Exception{
		return parkMapper.parkWhere(pInfoVO);
	}
	
	//주차조회
	public List<pReservationVO> parkCheck(pReservationVO pReservationVO) throws Exception{
		
		return parkMapper.parkCheck(pReservationVO);
	}
	//마이페이지주차내역조회
	public List<pReservationVO> myReservation(pReservationVO pReservationVO) throws Exception{
		return parkMapper.myReservation(pReservationVO);
	}
	
	public pReservationVO resSelect(pReservationVO pReservationVO) throws Exception{
		return parkMapper.resSelect(pReservationVO);
	}
	
	//인천공항 주차정보 호출
	public void test() throws Exception{
		System.out.println("hello");
        StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.kr/openapi/service/StatusOfParking/getTrackingParking"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D");/*Service Key*/
        
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
        
        String urls = "http://openapi.airport.kr/openapi/service/FacilitiesInformation/getFacilitesInfo?serviceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D&pageNo=1&numOfRows=10&lang=K&lcduty=Y&arrordep=A";
        //URL url = new URL(urlBuilder.toString());
        URL url = new URL(urls);
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
			String urlstr = "http://openapi.airport.co.kr/service/rest/AirportParking/airportparkingRT?serviceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D";
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
			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) nNode;
					ParkInfoVO parkInfoVO = new ParkInfoVO();
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
	
	
	public void apiRest(int year, int month, List<String> rest) throws Exception {
		
		BufferedReader br = null;
		try {
			String urlstr2 = "http://apis.data.go.kr/B090041/openapi/service/SpcdeInfoService/getHoliDeInfo?serviceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D&solYear=2020&numOfRows=25";
			String urlstr = "";
			if(month < 10) {
				
				urlstr = "http://apis.data.go.kr/B090041/openapi/service/SpcdeInfoService/getHoliDeInfo?serviceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D&solYear="+year+"&solMonth=0"+month;
			}else {
				urlstr = "http://apis.data.go.kr/B090041/openapi/service/SpcdeInfoService/getHoliDeInfo?serviceKey=QZHG0poXIbqgwOTVR4fiVzbVQ0Pmuz5lkYnHKmazdB%2F5VtUfkpt42I%2BSmw2F5XFUbX1%2Bmm8NaH5BLRz80XVUaA%3D%3D&solYear="+year+"&solMonth="+month;
			}
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
			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) nNode;

					if(getTagValue("isHoliday", eElement).equals("Y")) {
						rest.add(getTagValue("locdate", eElement));
					}
				} 
			} 
		} catch (Exception e) {
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
