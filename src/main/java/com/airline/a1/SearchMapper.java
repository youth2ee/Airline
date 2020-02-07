package com.airline.a1;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.airline.a1.board.BoardVO;
import com.airline.a1.board.NoticeVO;


@Repository
@Mapper
public interface SearchMapper {
	
	public List<BoardVO> searchTotalList(String search) throws Exception;
	public List<BoardVO> searchList(NoticeVO noticeVO) throws Exception;
	public int searchInsert(SearchVO searchVO) throws Exception;
	
	public List<SearchVO> realList() throws Exception;

	public SearchVO rankList() throws Exception;
	public int rankListUpdate(RankingVO rankingVO )throws Exception; 
	

	public int rListInsert(SearchRankingVO searchRankingVO) throws Exception;
	public SearchRankingVO rListSelect() throws Exception;
	public List<SearchRankingVO> rListTwo() throws Exception;
}
