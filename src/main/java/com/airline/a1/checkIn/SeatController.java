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
		bookingTicketVO.setBookingNum("Q11F50");
		List<BookingTicketVO> bookingTicketVOs = seatService.getBookData(bookingTicketVO);
		int people = seatService.getBookCount(bookingTicketVO);
		int kindFlag = 0;
		if (bookingTicketVOs.get(0).getKind().equals("왕복")) {
			people = people / 2;
			kindFlag = 1;
		}
		for (int i = 0; i < bookingTicketVOs.size(); i++)
			System.out.println(bookingTicketVOs.get(i).getFlightBNum());
		System.out.println(people);
		List<SeatVO> depSeatVOs = seatService.depBookedSeat(bookingTicketVO);
		List<SeatVO> arrSeatVOs = seatService.arrBookedSeat(bookingTicketVO);
		mv.addObject("kind", kindFlag);
		mv.addObject("people", people);
		mv.addObject("depFNum", bookingTicketVOs.get(0).getDepFnum());
		mv.addObject("arrFNum", bookingTicketVOs.get(0).getArrFnum());
		return mv;

	}

	@PostMapping("seat")
	public void seat(SeatVO seatVO) throws Exception {
		// ModelAndView mv = new ModelAndView();
		/*
		 * BookingTicketVO bookingTicketVO = new BookingTicketVO(); int result =
		 * seatService.seatBook(seatVO); String msg = "좌석 예매에 실패했습니다."; String path =
		 * "./"; if(result > 0) { msg = "좌석 선택 성공";
		 * bookingTicketVO.setBookingNum("1234"); // 파라미터로 받을거(이건 임시)
		 * List<BookingTicketVO> bookingTicketVOs =
		 * seatService.getBNum(bookingTicketVO); for(int i = 0 ; i <
		 * bookingTicketVOs.size(); i++) { BookingTicketVO bookingTicketVO2 = new
		 * BookingTicketVO();
		 * bookingTicketVO2.setBnum(bookingTicketVOs.get(i).getBnum());
		 * bookingTicketVO2.setFlightBNum(seatService.flightNum(bookingTicketVO));
		 * seatService.updateFlightNum(bookingTicketVO2); } }
		 */
		// return mv;
	}
}
