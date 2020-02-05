package com.airline.a1;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.snu.ids.ha.index.Keyword;
import org.snu.ids.ha.index.KeywordExtractor;
import org.snu.ids.ha.index.KeywordList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.airline.a1.board.BoardVO;
import com.airline.a1.board.NoticeVO;
import com.airline.a1.boardUtil.FilePathGenerator;
import com.airline.a1.boardUtil.FileSaver;
import com.airline.a1.boardUtil.Pager;

@Service
public class SearchService {

	@Autowired
	private SearchMapper searchMapper;

	
	public List<BoardVO> searchTotalList(String search) throws Exception {
		return searchMapper.searchTotalList(search);
	}

	public List<BoardVO> searchList(NoticeVO noticeVO) throws Exception{
		return searchMapper.searchList(noticeVO);
	}
	
	public int searchInsert(SearchVO searchVO) throws Exception {
		return searchMapper.searchInsert(searchVO);
	}
	
	public List<SearchVO> realList() throws Exception {
		return searchMapper.realList();
	}
	
	public int rListInsert(SearchRankingVO searchRankingVO) throws Exception {
		return searchMapper.rListInsert(searchRankingVO);
	}
	
	public SearchRankingVO rListSelect() throws Exception {
		return searchMapper.rListSelect();
	}
	
	
	public Map<String, Integer> listUpdate(SearchRankingVO newVO) throws Exception {
		List<String> nlist = new ArrayList<String>();
		nlist.add(0, newVO.getRank1());
		nlist.add(1, newVO.getRank1());
		nlist.add(2, newVO.getRank2());
		nlist.add(3, newVO.getRank3());
		nlist.add(4, newVO.getRank4());
		nlist.add(5, newVO.getRank5());
		nlist.add(6, newVO.getRank6());
		nlist.add(7, newVO.getRank7());
		nlist.add(8, newVO.getRank8());
		nlist.add(9, newVO.getRank9());
		nlist.add(10, newVO.getRank10());
		
		SearchRankingVO oldVO =  searchMapper.rListSelect();
		List<String> olist = new ArrayList<String>();
		olist.add(0, oldVO.getRank1());
		olist.add(1, oldVO.getRank1());
		olist.add(2, oldVO.getRank2());
		olist.add(3, oldVO.getRank3());
		olist.add(4, oldVO.getRank4());
		olist.add(5, oldVO.getRank5());
		olist.add(6, oldVO.getRank6());
		olist.add(7, oldVO.getRank7());
		olist.add(8, oldVO.getRank8());
		olist.add(9, oldVO.getRank9());
		olist.add(10, oldVO.getRank10());
		
		Map<String, Integer> tolist = new HashMap<>();
		
		for (int i = 1; i < 11; i++) {
			for (int j = 1; j < 11; j++) {
				
				if(olist.get(i).equals(nlist.get(j))) {
					
					if(i-j != 0) {
						System.out.println(nlist.get(j));
						System.out.println(i-j);
					}
					
					tolist.put(nlist.get(j), i-j);
				}
			}
		}
		
		return tolist;
	}
	
	
	
	
	
	
    public boolean getType(String word) {
        return Pattern.matches("^[0-9a-zA-Z]*$", word);
    }

    
    public Map<String, Integer> rListTwo() throws Exception {
        List<SearchRankingVO> ar = searchMapper.rListTwo();
    	
		SearchRankingVO newVO = ar.get(0);
		SearchRankingVO oldVO = ar.get(1);
		
		List<String> nlist = new ArrayList<String>();
		nlist.add(0, newVO.getRank1());
		nlist.add(1, newVO.getRank1());
		nlist.add(2, newVO.getRank2());
		nlist.add(3, newVO.getRank3());
		nlist.add(4, newVO.getRank4());
		nlist.add(5, newVO.getRank5());
		nlist.add(6, newVO.getRank6());
		nlist.add(7, newVO.getRank7());
		nlist.add(8, newVO.getRank8());
		nlist.add(9, newVO.getRank9());
		nlist.add(10, newVO.getRank10());
		
		List<String> olist = new ArrayList<String>();
		olist.add(0, oldVO.getRank1());
		olist.add(1, oldVO.getRank1());
		olist.add(2, oldVO.getRank2());
		olist.add(3, oldVO.getRank3());
		olist.add(4, oldVO.getRank4());
		olist.add(5, oldVO.getRank5());
		olist.add(6, oldVO.getRank6());
		olist.add(7, oldVO.getRank7());
		olist.add(8, oldVO.getRank8());
		olist.add(9, oldVO.getRank9());
		olist.add(10, oldVO.getRank10());
		
		Map<String, Integer> tolist = new HashMap<>();
		
		for (int i = 1; i < 11; i++) {
			for (int j = 1; j < 11; j++) {
				
				if(olist.get(i).equals(nlist.get(j))) {
					
					if(i-j != 0) {
						System.out.println(nlist.get(j));
						System.out.println(i-j);
					}
					
					tolist.put(nlist.get(j), i-j);
				}
			}
		}
    	
		return tolist;
    			
	}

	
	
	
}