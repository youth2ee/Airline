package com.airline.a1.boardUtil;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileSaver{

	public String save(File file, MultipartFile files)throws Exception{
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

