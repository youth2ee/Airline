package com.airline.a1.checkIn;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.booking.BookingTicketVO;

@Controller
@RequestMapping("/checkIn/**")
public class SeatController {
	@Autowired
	private SeatService seatService;

	@GetMapping("test")
	public void test() {

	}

	@GetMapping("seatQr")
	public ModelAndView seatQr(String depFlightNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("depFlightNum", depFlightNum);
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

	@PostMapping("seat")
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
			//depSeatResult = seatService.seatBook(depSeatVO);
			//depUpdateResult = seatService.updateFlightNumDep(depBookingTicketVO2);
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
				//arrSeatResult = seatService.seatBook(arrSeatVO);
				//arrUpdateResult = seatService.updateFlightNumDep(arrBookingTicketVO2);
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
}
