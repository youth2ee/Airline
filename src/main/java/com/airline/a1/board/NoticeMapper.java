package com.airline.a1.board;




import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.airline.a1.boardUtil.Pager;

@Repository
@Mapper
public interface NoticeMapper {
	
	public int noticeWrite(NoticeVO noticeVO)throws Exception;	
	
	public List<BoardVO> noticeList(Pager pager)throws Exception;
	
	public List<BoardVO> subNoticeList(Pager pager)throws Exception;
	
	public List<NoticeVO> adminNoticeList()throws Exception;
	
	public int noticeCount(Pager pager)throws Exception;
	
	public int noticeCount2(Pager pager)throws Exception;
	
	public NoticeVO noticeSelect(NoticeVO noticeVO)throws Exception;
	
	public NoticeVO subNoticeSelect(NoticeVO noticeVO)throws Exception;
	
	public void noticeHit(int num)throws Exception;
	
	public int noticeUpdate(BoardVO boardVO)throws Exception;
	
	public int noticeDelete(NoticeVO noticeVO)throws Exception;
	
	/* public List<BoardVO> listView(NoticeVO noticeVO)throws Exception; */
	
	public NoticeVO prev(NoticeVO noticeVO)throws Exception;
	
	public NoticeVO next(NoticeVO noticeVO)throws Exception;
	
	
}
