package com.airline.a1.checkIn;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.booking.BookingTicketVO;
import com.airline.a1.booking.FlightDataVO;
import com.airline.a1.member.MembersVO;

@Controller
@RequestMapping("/checkIn/**")
public class SeatController {
	@Autowired
	private SeatService seatService;

	@GetMapping("modalTest")
	public void modalTest() {
		
	}
	
	
	@GetMapping("captureTest")
	public void captureTest() {

	}

	@GetMapping("eTicket")
	public ModelAndView eTicket(ETicketVO eticketVO,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ETicketVO> eTicketVOs = seatService.getEticket(eticketVO);
		if(eTicketVOs.size() == 0) {
			mv.addObject("msg", "탑승정보가 존재하지 않습니다.");
			mv.setViewName("common/common_result_close");
			return mv;
		}
		
		MembersVO membersVO = (MembersVO) session.getAttribute("member");
		String[] strs = membersVO.getMemberNum().split("-");
		String str = strs[0] + strs[1] + strs[2];
		 
		int kind = 0; // 0 -> 편도 / 1 -> 왕복 
		ETicketVO depInfo = eTicketVOs.get(0);
	
		String dateData = depInfo.getDepPlandTime();
		String depTime = dateData.substring(8, 10) + ":" + dateData.substring(10, 12);
		dateData = dateData.substring(6, 8) + monthModi(dateData) + dateData.substring(2, 4) + "("
				+ getDate(dateData) + ")";
		depInfo.setDepPlandTime(dateData);
		String dateData2 = depInfo.getArrPlandTime();
		String arrTime = dateData2.substring(8, 10) + ":" + dateData2.substring(10, 12);
		dateData2 = dateData2.substring(6, 8) + monthModi(dateData2) + dateData2.substring(2, 4)+ "("
				+ getDate(dateData2) + ")";
		depInfo.setArrPlandTime(dateData2);
		mv.addObject("arrTime", arrTime);
		
		if (depInfo.getKind().equals("왕복")) {
			ETicketVO arrInfo = eTicketVOs.get(1);
			System.out.println(arrInfo);
			String dateData3 = arrInfo.getDepPlandTime();
			String depTime2 = dateData3.substring(8, 10) + ":" + dateData3.substring(10, 12);
			dateData3 = dateData3.substring(6, 8) + monthModi(dateData3) + dateData3.substring(2, 4) + "("
					+ getDate(dateData3) + ")";
			arrInfo.setDepPlandTime(dateData3);
			String dateData4 = arrInfo.getArrPlandTime();
			System.out.println(dateData4);
			String arrTime2 = dateData4.substring(8, 10) + ":" + dateData4.substring(10, 12);
			dateData4 = dateData4.substring(6, 8) + monthModi(dateData4) + dateData4.substring(2, 4)+ "("
					+ getDate(dateData4) + ")";
			arrInfo.setArrPlandTime(dateData4);
			mv.addObject("arrTime2", arrTime2);
			mv.addObject("depTime2", depTime2);
			mv.addObject("arrInfo", arrInfo);
			kind = 1;
		} 
		mv.addObject("memberNum",str);
		mv.addObject("depInfo", eTicketVOs.get(0));
		mv.addObject("depTime", depTime);
		mv.addObject("kind",kind);
		return mv;
	}

	
	@GetMapping("ttt")
	public void ttt() {

	}

	@GetMapping("checkInPage")
	public void test() {

	}

	@GetMapping("seatQr")
	public ModelAndView seatQr(String depFlightNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("depFlightNum", depFlightNum);
		return mv;
	}
	
	@GetMapping("bookingCheck")
	public ModelAndView bookingCheck(String bookingNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		BookingTicketVO bookingTicketVO = new BookingTicketVO();
		bookingTicketVO.setBookingNum(bookingNum);
		List<BookingTicketVO> bookingTicketVOs = seatService.getBookData(bookingTicketVO);
		if (bookingTicketVOs.size() == 0) {
			mv.addObject("result", 0);
		} else if (bookingTicketVOs.get(0).getFlightBNum() != null) {
			mv.addObject("result", 1);
		} else {
			int people = seatService.getBookCount(bookingTicketVO);
			int kindFlag = 0;
			if (bookingTicketVOs.get(0).getKind().equals("왕복")) {
				people = people / 2;
				kindFlag = 1; // 왕복이면 kindFlag = 1
			}
			List<SeatVO> depSeatVOs = seatService.depBookedSeat(bookingTicketVOs.get(0));
			List<SeatVO> arrSeatVOs = seatService.arrBookedSeat(bookingTicketVOs.get(0));
			List<SeatVO> seatVOs = seatService.getSeatData();
			ArrayList<String> depSeat = new ArrayList<>();
			ArrayList<String> arrSeat = new ArrayList<>();
			System.out.println(bookingTicketVOs.get(0).getArrFnum());
			for(int i = 0; i < depSeatVOs.size(); i++) {
				System.out.println(depSeatVOs.get(i).getSeatName());
				depSeat.add(depSeatVOs.get(i).getSeatName());
			}
			for(int i = 0; i < arrSeatVOs.size(); i++) {
				System.out.println(arrSeatVOs.get(i).getSeatName());
				arrSeat.add(arrSeatVOs.get(i).getSeatName());
			}
			bookingTicketVO = seatService.getLoc(bookingTicketVOs.get(0));
			System.out.println("이름 : " + bookingTicketVOs.get(0).getId());
			String tripDate = bookingTicketVO.getDepPlandTime().substring(0,8) + " ~ " +  bookingTicketVO.getArrPlandTime().substring(0,8);
			mv.addObject("result", 2);
			mv.addObject("kind", kindFlag);
			mv.addObject("people", people);
			mv.addObject("depFNum", bookingTicketVOs.get(0).getDepFnum());
			mv.addObject("arrFNum", bookingTicketVOs.get(0).getArrFnum());
			mv.addObject("depLoc", bookingTicketVO.getDepAirportNm());
			mv.addObject("arrLoc", bookingTicketVO.getArrAirportNm());
			mv.addObject("id",bookingTicketVOs.get(0).getId());
			mv.addObject("tripData", bookingTicketVOs.get(0));
			mv.addObject("booked", seatVOs);
			mv.addObject("depSeat", depSeat);
			mv.addObject("arrSeat", arrSeat);
			mv.addObject("bookingNum",bookingNum);
			mv.addObject("tripDate",tripDate);
		}
		return mv;
	}
	
	@GetMapping("seat")
	public ModelAndView seat(String bookingNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		String msg = "이미 체크인 하셨습니다.";
		String path = "./test";
		BookingTicketVO bookingTicketVO = new BookingTicketVO();
		bookingTicketVO.setBookingNum(bookingNum); // 파라미터로 받을값 (현재는임시)
		List<BookingTicketVO> bookingTicketVOs = seatService.getBookData(bookingTicketVO);
		System.out.println(bookingTicketVOs.size());
		if (bookingTicketVOs.size() == 0) {
			msg = "정보 조회에 실패했습니다. 예매번호를 확인해주세요.";
			path = "./test";
			mv.addObject("msg", msg);
			mv.addObject("path", path);
			mv.setViewName("common/common_result");

		} else {
			if (bookingTicketVOs.get(0).getFlightBNum() == null) {
				int people = seatService.getBookCount(bookingTicketVO);
				int kindFlag = 0;
				if (bookingTicketVOs.get(0).getKind().equals("왕복")) {
					people = people / 2;
					kindFlag = 1;
				}
				System.out.println("people : " + people);

				List<SeatVO> depSeatVOs = seatService.depBookedSeat(bookingTicketVO);
				List<SeatVO> arrSeatVOs = seatService.arrBookedSeat(bookingTicketVO);
				List<SeatVO> seatVOs = seatService.getSeatData();
				mv.addObject("kind", kindFlag);
				mv.addObject("people", people);
				mv.addObject("depFNum", bookingTicketVOs.get(0).getDepFnum());
				mv.addObject("arrFNum", bookingTicketVOs.get(0).getArrFnum());
				mv.addObject("tripData", bookingTicketVOs.get(0));
				mv.addObject("booked", seatVOs);
			} else {
				mv.addObject("msg", msg);
				mv.addObject("path", path);
				mv.setViewName("common/common_result");
			}
		}
		return mv;

	}

	@PostMapping("checkInPage")
	public ModelAndView seat(SeatDataVO seatDataVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		BookingTicketVO isCheck = new BookingTicketVO();
		int depInsertCheck = 0;
		int arrInsertCheck = 0;
		String depFlightNum = null;
		String arrFlightNum = null;
		String path = "../";
		String msg = "이미 체크인 하셨습니다.";

		String depSeat[] = seatDataVO.getDepSeat().split(",");
		// 가는편 예약하기
		for (int i = 0; i < depSeat.length; i++) {
			int depSeatResult = 0;
			int depUpdateResult = 0;

			String fnum = Integer.toString(seatDataVO.getDepFNum());
			BookingTicketVO depBookingTicketVO1 = new BookingTicketVO();
			depBookingTicketVO1.setBookingNum(seatDataVO.getBookingNum());
			depBookingTicketVO1.setDepFnum(seatDataVO.getDepFNum());
			List<BookingTicketVO> depBookingTicketVOs = seatService.getDepBnum(depBookingTicketVO1);
			SeatVO depSeatVO = new SeatVO();
			BookingTicketVO depBookingTicketVO2 = new BookingTicketVO();
			depBookingTicketVO2.setBnum(depBookingTicketVOs.get(i).getBnum());
			depBookingTicketVO2.setFlightBNum(seatService.flightNum(seatService.getVihicleId(fnum)));
			depBookingTicketVO2.setDepFnum(seatDataVO.getDepFNum());
			depBookingTicketVO2.setBookingNum(seatDataVO.getBookingNum());
			depSeatVO.setBookingNum(seatDataVO.getBookingNum());
			depSeatVO.setFnum(seatDataVO.getDepFNum());
			depSeatVO.setFlightNum(depBookingTicketVO2.getFlightBNum());
			depSeatVO.setSeatName(depSeat[i]);
			depSeatResult = seatService.seatBook(depSeatVO);
			depUpdateResult = seatService.updateFlightNumDep(depBookingTicketVO2);
			if (depSeatResult + depUpdateResult == 2)
				depInsertCheck++;
			depFlightNum = depBookingTicketVO2.getFlightBNum();
		}
		if (seatDataVO.getArrSeat() != null) { // 편도비행기가 아니라면
			// 오는편 예약하기
			String arrSeat[] = seatDataVO.getArrSeat().split(",");
			for (int j = 0; j < arrSeat.length; j++) {
				int arrSeatResult = 0;
				int arrUpdateResult = 0;
				String fnum2 = Integer.toString(seatDataVO.getArrFNum());
				BookingTicketVO arrBookingTicketVO1 = new BookingTicketVO();
				arrBookingTicketVO1.setBookingNum(seatDataVO.getBookingNum());
				arrBookingTicketVO1.setDepFnum(seatDataVO.getArrFNum());
				List<BookingTicketVO> arrbookingTicketVOs = seatService.getDepBnum(arrBookingTicketVO1);
				SeatVO arrSeatVO = new SeatVO();
				BookingTicketVO arrBookingTicketVO2 = new BookingTicketVO();
				arrBookingTicketVO2.setBnum(arrbookingTicketVOs.get(j).getBnum());
				arrBookingTicketVO2.setFlightBNum(seatService.flightNum(seatService.getVihicleId(fnum2)));
				arrBookingTicketVO2.setDepFnum(seatDataVO.getArrFNum());
				arrBookingTicketVO2.setBookingNum(seatDataVO.getBookingNum());
				arrSeatVO.setBookingNum(seatDataVO.getBookingNum());
				arrSeatVO.setFnum(seatDataVO.getArrFNum());
				arrSeatVO.setFlightNum(arrBookingTicketVO2.getFlightBNum());
				arrSeatVO.setSeatName(arrSeat[j]);
				arrSeatResult = seatService.seatBook(arrSeatVO);
				arrUpdateResult = seatService.updateFlightNumDep(arrBookingTicketVO2);
				if (arrSeatResult + arrUpdateResult == 2)
					arrInsertCheck++;
			}
		} else {
			System.out.println("편도비행기");
		}
		if (seatDataVO.getArrSeat() != null) { // 왕복 비행기 데이터 입력 여부 확인
			if (depInsertCheck == seatDataVO.getPeople() && arrInsertCheck == seatDataVO.getPeople()) {
				msg = "체크인 완료";
				// path = "./seatQr?depFlightNum=" + depFlightNum + "&arrFlightNum=" +
				// arrFlightNum;
			} else {
				msg = "체크인 실패";
				path = "./test";
			}
		} else { // 편도 비행기 데이터 입력 여부 확인
			if (depInsertCheck == seatDataVO.getPeople()) {
				msg = "체크인 완료";
				// path = "./seatQr?depFlightNum=" + depFlightNum;
			} else {
				msg = "체크인 실패";
				path = "./test";
			}
		}
		mv.addObject("msg", msg);
		mv.addObject("path", path);
		mv.setViewName("common/common_result");
		return mv;

	}
	public String monthModi(String dateData) throws Exception {
		dateData = dateData.substring(4, 6);
		switch (dateData) {
		case "01":
			dateData = "JAN";
			break;
		case "02":
			dateData = "FEB";
			break;
		case "03":
			dateData = "MAR";
			break;
		case "04":
			dateData = "APR";
			break;
		case "05":
			dateData = "MAY";
			break;
		case "06":
			dateData = "JUN";
			break;
		case "07":
			dateData = "JUL";
			break;
		case "08":
			dateData = "AUG";
			break;
		case "09":
			dateData = "SEP";
			break;
		case "10":
			dateData = "OCT";
			break;
		case "11":
			dateData = "NOV";
			break;
		case "12":
			dateData = "DEC";
			break;
		default:
			break;
		}
		return dateData;
	}

	public String getDate(String dateData) throws Exception {
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		String inputDate = dateData.substring(0, 7);
		Date date = dateFormat.parse(inputDate);
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		switch (calendar.get(Calendar.DAY_OF_WEEK)) {
		case 1:
			dateData = "목";
			break;
		case 2:
			dateData = "금";
			break;
		case 3:
			dateData = "토";
			break;
		case 4:
			dateData = "일";
			break;
		case 5:
			dateData = "월";
			break;
		case 6:
			dateData = "화";
			break;
		case 7:
			dateData = "수";
			break;

		}
		return dateData;
	}

}

