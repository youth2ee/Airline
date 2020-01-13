package com.airline.a1.sample;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

@Service
public class NoticeService {
	
	//@Autowired
	@Resource(name = "noticeMapper")
	private NoticeMapper noticeMapper;
	
	@Autowired
	private NoticeFilesMapper noticeFilesMapper;
	
	@Autowired 
	private ServletContext servelContext;
	 


	
	
	//
	
	
	public boolean noticeWriteValidate(NoticeVO noticeVO, BindingResult bindingResult) throws Exception {
		boolean check = false;
		
		if (bindingResult.hasErrors()) {
			check = true;
		}
		
		return check;
		
	}
	
	public NoticeFilesVO noticeFilesDown(NoticeFilesVO noticeFilesVO) throws Exception {
		return noticeFilesMapper.noticeFilesDown(noticeFilesVO);
	}
	
	
}
