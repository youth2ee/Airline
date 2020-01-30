package com.airline.a1.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface NoticeFilesMapper {

		public int noticeFileWrite(List<NoticeFilesVO> noticeFilesVOs)throws Exception;
		
}
