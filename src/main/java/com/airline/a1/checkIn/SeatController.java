package com.airline.a1.checkIn;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.booking.BookingTicketVO;
import com.airline.a1.booking.FlightDataVO;

@Controller
@RequestMapping("/checkIn/**")
public class SeatController {
	@Autowired
	private SeatService seatService;
	
	
	@GetMapping("test")
	public void test() {
		
	}

	@GetMapping("seatQr")
	public void seatQr() throws Exception {

	}

	@GetMapping("seat")
	public ModelAndView seat() throws Exception {
		ModelAndView mv = new ModelAndView();
		BookingTicketVO bookingTicketVO = new BookingTicketVO();
		bookingTicketVO.setBookingNum("F66C84"); // 파라미터로 받을값 (현재는임시)
		List<BookingTicketVO> bookingTicketVOs = seatService.getBookData(bookingTicketVO);
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
		return mv;

	}

	@PostMapping("seat")
	public ModelAndView seat(SeatDataVO seatDataVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		BookingTicketVO isCheck = new BookingTicketVO();
		String path = "../";
		String msg = "이미 체크인 하셨습니다.";
		isCheck.setBookingNum(seatDataVO.getBookingNum());
		if (seatService.getBookData(isCheck).get(0).getFlightBNum() == null) {
			String depSeat[] = seatDataVO.getDepSeat().split(",");
			// 가는편 예약하기
			for (int i = 0; i < depSeat.length; i++) {
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
				seatService.seatBook(depSeatVO);
				seatService.updateFlightNumDep(depBookingTicketVO2);
				msg = "체크인 완료";
			}
			if (seatDataVO.getArrSeat() != null) { // 편도비행기가 아니라면
				String arrSeat[] = seatDataVO.getArrSeat().split(",");
				// 오는편 예약하기
				for (int j = 0; j < arrSeat.length; j++) {
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
					seatService.seatBook(arrSeatVO);
					seatService.updateFlightNumDep(arrBookingTicketVO2);
				}
			} else {
				System.out.println("편도비행기");
			}
		}
		mv.addObject("msg", msg);
		mv.addObject("path", path);
		mv.setViewName("common/common_result");
		return mv;

	}
}
