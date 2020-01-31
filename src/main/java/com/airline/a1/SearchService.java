package com.airline.a1;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.airline.a1.board.BoardVO;
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
	
}