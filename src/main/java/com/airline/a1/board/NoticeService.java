package com.airline.a1.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	
	public int noticeWrite(NoticeVO noticeVO)throws Exception{
		
		return noticeMapper.noticeWrite(noticeVO); 
	
	}
}
