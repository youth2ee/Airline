package com.airline.a1;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

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
	
	
	public void svoca(String search) {
		// string to extract keywords
        String strToExtrtKwrd = search;
        // init KeywordExtractor
        KeywordExtractor ke = new KeywordExtractor();
        // extract keywords
        KeywordList kl = ke.extractKeyword(strToExtrtKwrd, true);
        
        String msg = "";
        
        // print result
        for( int i = 0; i < kl.size(); i++ ) {
            Keyword kwrd = kl.get(i);
            System.out.println(kwrd.getString() + "\t" + kwrd.getCnt());
        }
	}
}