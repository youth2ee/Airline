package com.airline.a1;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.airline.a1.booking.BookingMapper;
import com.airline.a1.booking.BookingService;
import com.airline.a1.booking.BookingTicketVO;

@SpringBootTest
class AirlineApplicationTests3 {

	@Autowired
	private DataSource dataSource;

	@Autowired
	private BookingMapper bookingMapper;

	@Autowired
	private BookingService bookingService;
	
	
	@Test
	void contextLoads() throws Exception {
		assertNotNull(dataSource.getConnection());
		
		BookingTicketVO bookingTicketVO = new BookingTicketVO();
		bookingService.bookingInsert(bookingTicketVO);
		
		
		
	}

}
