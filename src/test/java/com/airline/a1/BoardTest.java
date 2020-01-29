package com.airline.a1;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.airline.a1.board.NoticeFilesMapper;
import com.airline.a1.board.NoticeFilesVO;
import com.airline.a1.board.NoticeMapper;
import com.airline.a1.board.NoticeService;
import com.airline.a1.board.NoticeVO;
import com.airline.a1.limo.LimoService;
import com.airline.a1.limo.LimoVO;

@SpringBootTest
class BoardTest {
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Autowired
	private NoticeFilesMapper noticeFilesMapper;
	
	//@Test
	void writeTest()throws Exception {
		
		NoticeVO noticeVO = new NoticeVO();
		
		noticeVO.setContents("contents1");
		noticeVO.setTitle("title1");
		noticeVO.setWriter("writer1");
		
		int result = noticeMapper.noticeWrite(noticeVO);
		assertEquals(1, result);
		
	}
	
	

}
