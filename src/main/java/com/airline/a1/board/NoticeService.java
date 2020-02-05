package com.airline.a1.board;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.airline.a1.boardUtil.FilePathGenerator;
import com.airline.a1.boardUtil.FileSaver;
import com.airline.a1.boardUtil.Pager;

@Service
public class NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	@Autowired
	private NoticeFilesMapper noticeFilesMapper;	
	@Autowired
	private FileSaver fileSaver;
	@Autowired
	private FilePathGenerator filePathGenerator;
	
	public boolean summerfileDelete(String file, HttpSession session)throws Exception{
	
		String realPath = session.getServletContext().getRealPath("resources/upload/summerfile");
		return fileSaver.fileDelete(realPath, file);
	}
	
	
	public String summerfile(MultipartFile file, HttpSession session)throws Exception{
		String realPath = session.getServletContext().getRealPath("resources/upload/summerfile");
		return fileSaver.save(realPath, file);
	}
	
	
	public int noticeWrite(NoticeVO noticeVO, MultipartFile[] file)throws Exception{			
		//file 유무검증 		
		boolean check = false;
		int result = noticeMapper.noticeWrite(noticeVO); 		
			if(file.length>0) {
				
				for(MultipartFile multipartFile: file) {
						if(multipartFile.getSize()>0) {
							check = true;
							break;
					}				
				}//for끝
				
				if(check) {
					List<NoticeFilesVO> noticeFilesVOs = new ArrayList<>(); 
					File file2 = filePathGenerator.getUseClassPathResource("board");
					
					for(MultipartFile multipartFile:file) {
						if(multipartFile.getSize()>0) {
							String fileName = fileSaver.save2(file2, multipartFile);
							NoticeFilesVO noticeFilesVO = new NoticeFilesVO();
							noticeFilesVO.setNum(noticeVO.getNum());
							noticeFilesVO.setFname(fileName);
							noticeFilesVO.setOname(multipartFile.getOriginalFilename());
							noticeFilesVOs.add(noticeFilesVO);
						}
					}
					result = noticeFilesMapper.noticeFileWrite(noticeFilesVOs);			
				}		
			}		
			return result; 	
		}
	
	public List<BoardVO> noticeList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makePage(noticeMapper.noticeCount(pager));
		return noticeMapper.noticeList(pager);
		
	}
	
	public List<BoardVO> subNoticeList(Pager pager)throws Exception{				 
		pager.makeRow();
		pager.makePage(noticeMapper.noticeCount2(pager));
		return noticeMapper.subNoticeList(pager);
		
	}
	
	public int noticeCount(Pager pager)throws Exception{
		 return noticeMapper.noticeCount(pager);
		
	}
	
	public int noticeCount2(Pager pager)throws Exception{
		return noticeMapper.noticeCount2(pager);
		
	}
	
	public NoticeVO noticeSelect(NoticeVO noticeVO)throws Exception{
			return noticeMapper.noticeSelect(noticeVO);
	}
	
	public NoticeVO subNoticeSelect(NoticeVO noticeVO)throws Exception{
			return noticeMapper.subNoticeSelect(noticeVO);
	}

	
	
}