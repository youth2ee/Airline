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

import com.airline.a1.api.AirportDataMapper;

import com.airline.a1.api.BusVO;
import com.airline.a1.booking.FlightDataVO;

@SpringBootTest
class AirlineApplicationTests {

	@Autowired
	private DataSource dataSource;
	@Autowired
	private AirportDataMapper airportDataMapper;
	@Autowired
	private FlightDataVO flightDataVO;
	@Autowired
	private BusVO busVO;

	//@Test
	void apiTest5() throws Exception {
		// 항공정보 + 운임
		BufferedReader br = null;
		String cityCode = null;
		try {
			for (int i = 1; i < 16; i++) {
				cityCode = airportDataMapper.searchAirportCode(i);
				String urlstr = "http://openapi.airport.co.kr/service/rest/AirportBusInfo/businfo?" + "schAirport="
						+ cityCode + "&"
						+ "serviceKey=ocUWaBXkUfn7dTwV69oHksQQ4C4g9sEm41EWbQU3DNWLYSsd%2BewFHSMTGYGwGi5kcBCKXPGHARowuE0BgEsokg%3D%3D&";

				URL url = new URL(urlstr);
				HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
				urlconnection.setRequestMethod("GET");
				br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
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
						if (eElement.getElementsByTagName("busCategoryKorName").getLength() != 0) {
							System.out.println("유형 : " + getTagValue("busCategoryKorName", eElement));
							busVO.setBusCategoryKorName(getTagValue("busCategoryKorName", eElement));
						} else {
							System.out.println("유형 : null");
							busVO.setBusCategoryKorName("null");
						}

						if (eElement.getElementsByTagName("busDataBusNum").getLength() != 0) {
							System.out.println("노선명 : " + getTagValue("busDataBusNum", eElement));
							busVO.setBusDataBusNum(getTagValue("busDataBusNum", eElement));
						} else {
							System.out.println("노선명 : null");
							busVO.setBusDataBusNum("null");
						}
						if (eElement.getElementsByTagName("busDataFirstTime").getLength() != 0) {
							System.out.println("첫차 : " + getTagValue("busDataFirstTime", eElement));
							busVO.setBusDataFirstTime(getTagValue("busDataFirstTime", eElement));
						} else {
							System.out.println("첫차");
							busVO.setBusDataFirstTime("null");
						}
						if (eElement.getElementsByTagName("busDataEndTime").getLength() != 0) {
							System.out.println("막차 : " + getTagValue("busDataEndTime", eElement));
							busVO.setBusDataEndTime(getTagValue("busDataEndTime", eElement));
						} else {
							System.out.println("막차 : null");
							busVO.setBusDataEndTime("null");
						}
						if (eElement.getElementsByTagName("busDataEtcKor").getLength() != 0) {
							System.out.println("운행간격 : " + getTagValue("busDataEtcKor", eElement));
							busVO.setBusDataEtcKor(getTagValue("busDataEtcKor", eElement));
						} else {
							System.out.println("운행간격 : null");
							busVO.setBusDataEtcKor("null");
						}
						if (eElement.getElementsByTagName("busDataMoney").getLength() != 0) {
							System.out.println("요금 : " + getTagValue("busDataMoney", eElement));
							busVO.setBusDataMoney(getTagValue("busDataMoney", eElement));
						} else {
							System.out.println("요금 : null");
							busVO.setBusDataMoney("null");
						}
						if (eElement.getElementsByTagName("busDataRouteKor").getLength() != 0) {
							System.out.println("노선안내 : " + getTagValue("busDataRouteKor", eElement));
							busVO.setBusDataRouteKor(getTagValue("busDataRouteKor", eElement));
						} else {
							System.out.println("노선안내 : null");
							busVO.setBusDataRouteKor("null");
						}
						if (eElement.getElementsByTagName("busDataGetonKor").getLength() != 0) {
							System.out.println("승하차위치 : " + getTagValue("busDataGetonKor", eElement));
							busVO.setBusDataGetonKor(getTagValue("busDataGetonKor", eElement));
						} else {
							System.out.println("승하차위치 : null");
							busVO.setBusDataGetonKor("null");
						}
						airportDataMapper.busDataInput(busVO);
					}
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("끝");
	}

	@Test
	void apiTest4() throws Exception {
		// 항공정보 + 운임
		BufferedReader br = null;
		try {
			String urlstr =  "http://openapi.airport.kr/openapi/service/FacilitiesInformation/getFacilitesInfo?ServiceKey=ocUWaBXkUfn7dTwV69oHksQQ4C4g9sEm41EWbQU3DNWLYSsd%2BewFHSMTGYGwGi5kcBCKXPGHARowuE0BgEsokg%3D%3D&lang=K&lcduty=Y";

			  URL url = new URL(urlstr);
	            HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
	            urlconnection.setRequestMethod("GET");
	            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
	            String result = "";
	            String line;
	            while((line = br.readLine()) != null) {
	                result = result + line + "\n";
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
		String depAp = null;
		String arrAp = null;
		try {
			for (int i = 1; i < 16; i++) {
				depAp = airportDataMapper.searchAirport(i);
				for (int j = 1; j < 16; j++) {
					arrAp = airportDataMapper.searchAirport(j);
					System.out.println("출발" + depAp + i);
					System.out.println("도착" + arrAp + j);
					String urlstr = "http://openapi.tago.go.kr/openapi/service/DmstcFlightNvgInfoService/getFlightOpratInfoList?"
							+ "serviceKey=iEDBbpkkNQN604mbzvOvbCbGl0rXiyk4SdUBO%2FqhREGGDL5QrF2SrrZzf3l2%2BUNCeiBD97RtxaPQZaL9VqVR%2Fg%3D%3D&"
							+ "numOfRows=100&" + "depAirportId=" + depAp + "&" + "arrAirportId=" + arrAp + "&"
							+ "depPlandTime=20200116"; // 출발일 // 항공사ID

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
					// System.out.println("Root element: " +
					// doc.getDocumentElement().getNodeName());
					// System.out.println("파싱할 리스트 수 : " + nList.getLength());
					for (int temp = 0; temp < nList.getLength(); temp++) {
						Node nNode = nList.item(temp);
						if (nNode.getNodeType() == Node.ELEMENT_NODE) {

							Element eElement = (Element) nNode;

							System.out.println("######################");
							if (eElement.getElementsByTagName("vihicleId").getLength() != 0) {
								System.out.println("항공편명 : " + getTagValue("vihicleId", eElement));
								flightDataVO.setVihicleId(getTagValue("vihicleId", eElement));
							} else {
								System.out.println("항공편명 : 0");
								flightDataVO.setVihicleId("0");
							}
							if (eElement.getElementsByTagName("airlineNm").getLength() != 0) {
								System.out.println("항공사명 : " + getTagValue("airlineNm", eElement));
								flightDataVO.setAirlineNm(getTagValue("airlineNm", eElement));
							} else {
								System.out.println("항공사명 : 0");
								flightDataVO.setAirlineNm("0");
							}
							if (eElement.getElementsByTagName("depPlandTime").getLength() != 0) {
								System.out.println("출발시간 : " + getTagValue("depPlandTime", eElement));
								flightDataVO.setDepPlandTime(getTagValue("depPlandTime", eElement));
							} else {
								System.out.println("출발시간 : 0");
								flightDataVO.setDepPlandTime("0");
							}
							if (eElement.getElementsByTagName("arrPlandTime").getLength() != 0) {
								System.out.println("도착시간 : " + getTagValue("arrPlandTime", eElement));
								flightDataVO.setArrPlandTime(getTagValue("arrPlandTime", eElement));
							} else {
								System.out.println("도착시간 : 0");
								flightDataVO.setArrPlandTime("0");
							}
							if (eElement.getElementsByTagName("economyCharge").getLength() != 0) {
								System.out.println("일반석운임 : " + getTagValue("economyCharge", eElement));
								flightDataVO.setEconomyCharge(getTagValue("economyCharge", eElement));
							} else {
								System.out.println("일반석운임 : 0");
								flightDataVO.setEconomyCharge("0");
							}
							// System.out.println("비즈니스석운임 : " + getTagValue("prestigeCharge", eElement));
							if (eElement.getElementsByTagName("depAirportNm").getLength() != 0) {
								System.out.println("출발공항 : " + getTagValue("depAirportNm", eElement));
								flightDataVO.setDepAirportNm(getTagValue("depAirportNm", eElement));
							} else {
								System.out.println("출발공항  : 0");
								flightDataVO.setDepAirportNm("0");
							}
							if (eElement.getElementsByTagName("arrAirportNm").getLength() != 0) {
								System.out.println("도착공항 : " + getTagValue("arrAirportNm", eElement));
								flightDataVO.setArrAirportNm(getTagValue("arrAirportNm", eElement));
							} else {
								System.out.println("도착공항  : 0");
								flightDataVO.setArrAirportNm("0");
							}
							airportDataMapper.flightDataInput(flightDataVO);
						}
					}
				}
				// System.out.println(result);
			}
		} catch (Exception e) {
			e.printStackTrace();
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
					+ "schDate=20200115&" + "numOfRows=1000";
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
					System.out.println("항공사  : " + getTagValue("airlineKorean", eElement));
					System.out.println("항공편명  : " + getTagValue("domesticNum", eElement));
					System.out.println("도착공항  : " + getTagValue("startcity", eElement));
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
