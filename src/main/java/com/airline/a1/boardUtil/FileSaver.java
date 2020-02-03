package com.airline.a1.boardUtil;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileSaver{

	public boolean fileDelete(String realPath, String filename)throws Exception{
		File file = new File(realPath, filename);
		boolean check = false;
		if(file.exists()) {
			check = file.delete();
		}
		return check;
	}
	
	//2. MultipartFile transferTo 메서드 사용 
		public String save(String realPath, MultipartFile files)throws Exception{
			File file = new File(realPath);
			if(!file.exists()) {
				file.mkdirs();
			}		
			//저장할 파일명 
			String fileName = UUID.randomUUID().toString();
			fileName = fileName+"_"+files.getOriginalFilename();
			
			//System.out.println(fileName);
			
			file = new File(realPath, fileName);
			
			files.transferTo(file);
			
			return fileName;
			
		}
	
		
	public String save2(File file, MultipartFile files)throws Exception{
		/*	File file = new File(filePath);
			if(!file.exists()) {
				file.mkdirs();
				/* 디렉토리 생성요청 */
		//}

		String fileName = UUID.randomUUID().toString()+"_"+files.getOriginalFilename();

		file = new File(file, fileName);
		/* file에 fileName */

		files.transferTo(file);

		return fileName;
	}

}	

