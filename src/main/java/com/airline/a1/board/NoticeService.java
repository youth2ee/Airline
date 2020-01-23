package com.airline.a1.board;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.airline.a1.boardUtil.FilePathGenerator;
import com.airline.a1.boardUtil.FileSaver;

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
	
	
	
	public int noticeWrite(NoticeVO noticeVO, MultipartFile[] files)throws Exception{
		
		//file 유무검증 
		
		boolean check = false;
		int result =noticeMapper.noticeWrite(noticeVO); 
		if(files.length>0) {
			
			for(MultipartFile multipartFile: files) {
					if(multipartFile.getSize()>0) {
						check = true;
						break;
				}				
			}//for끝
				
			if(check) {
				List<NoticeFilesVO> noticeFilesVOs = new ArrayList<>();
				for(MultipartFile multipartFile:files) {
					if(multipartFile.getSize()>0) {
						NoticeFilesVO noticeFilesVO = new NoticeFilesVO();
						File file = filePathGenerator.getUseClassPathResource("board");
						String fileName = fileSaver.save(file, multipartFile);
						noticeFilesVO.setNum(noticeVO.getNum());
						noticeFilesVO.setFname(fileName);
						noticeFilesVO.setOname(multipartFile.getOriginalFilename());
						noticeFilesVOs.add(noticeFilesVO);
						
						
					}
				int	fresult = noticeFilesMapper.noticeFileWrite(noticeFilesVOs);
					return fresult;
				}
				
				
			}
			
			
		}
		
		
		
		return result;
	
	}
}
