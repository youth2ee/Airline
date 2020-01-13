package com.airline.a1.sample;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Repository
@Mapper
public interface NoticeMapper {
	
	public List<NoticeVO> noticeList() throws Exception;
	public int noticeInsert(NoticeVO noticeVO) throws Exception;
	public int noticeCount() throws Exception;
	public NoticeVO noticeSelect(NoticeVO noticeVO) throws Exception;

}

