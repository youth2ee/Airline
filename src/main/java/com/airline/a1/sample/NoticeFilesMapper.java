package com.airline.a1.sample;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface NoticeFilesMapper {
	
	public int noticeFilesInsert(NoticeFilesVO noticeFilesVO) throws Exception;
	public int noticeFilesListInsert(List<NoticeFilesVO> noticeFilesVOs) throws Exception;
	public List<NoticeFilesVO> noticeFilesSelect(NoticeVO noticeVO) throws Exception;
	public NoticeFilesVO noticeFilesDown(NoticeFilesVO noticeFilesVO) throws Exception;
	
}

