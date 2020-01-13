package com.airline.a1;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class AirlineApplicationTests {

	@Autowired
	private DataSource dataSource;
	
	
	@Test
	void contextLoads() throws Exception {
		assertNotNull(dataSource.getConnection());
	}

}
