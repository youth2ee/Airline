package com.airline.a1.board;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface NoticeMapper {
	
	public int noticeWrite(NoticeVO noticeVO)throws Exception;
	

}
