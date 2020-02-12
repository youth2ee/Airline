package com.airline.a1.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface NoticeFilesMapper {

		public int noticeFileWrite(List<NoticeFilesVO> noticeFilesVOs)throws Exception;
		
		public List<NoticeFilesVO> noticeFileList(int num)throws Exception;
		
		public NoticeFilesVO noticeFileSelect(NoticeFilesVO noticeFilesVO)throws Exception;
		
		public int noticeFileDelete(NoticeFilesVO noticeFilesVO)throws Exception;
		 
		
}
