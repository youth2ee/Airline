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
	public void seat(SeatDataVO seatDataVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		String depSeat[] = seatDataVO.getDepSeat().split(",");
		if (seatDataVO.getArrSeat() != null) {
			String arrSeat[] = seatDataVO.getArrSeat().split(",");
		} else {
			System.out.println("편도비행기");
		}
		String fnum = Integer.toString(seatDataVO.getDepFNum());
		// 가는편 예약하기
		for (int i = 0; i < depSeat.length; i++) {
			BookingTicketVO bookingTicketVO = new BookingTicketVO();
			bookingTicketVO.setBookingNum(seatDataVO.getBookingNum());
			bookingTicketVO.setDepFnum(seatDataVO.getDepFNum());
			List<BookingTicketVO> bookingTicketVOs = seatService.getDepBnum(bookingTicketVO);
			SeatVO seatVO = new SeatVO();
			BookingTicketVO bookingTicketVO2 = new BookingTicketVO();
			bookingTicketVO2.setBnum(bookingTicketVOs.get(i).getBnum());
			bookingTicketVO2.setFlightBNum(seatService.flightNum(seatService.getVihicleId(fnum)));
			bookingTicketVO2.setDepFnum(seatDataVO.getDepFNum());
			;
			bookingTicketVO2.setBookingNum(seatDataVO.getBookingNum());
			seatVO.setBookingNum(seatDataVO.getBookingNum());
			seatVO.setFnum(seatDataVO.getDepFNum());
			seatVO.setFlightNum(bookingTicketVO2.getFlightBNum());
			seatVO.setSeatName(depSeat[i]);
			seatService.seatBook(seatVO);
			seatService.updateFlightNumDep(bookingTicketVO2);
			System.out.println("b.bnum : " + bookingTicketVO2.getBnum());
			System.out.println("s.fnum : " + seatVO.getFnum());
			System.out.println("s.seatName : " + seatVO.getSeatName());
			System.out.println("s.bookingNum : " + seatVO.getBookingNum());
			System.out.println("s.flightNum : " + seatVO.getFlightNum());
		}

		// return mv;
	}
}
