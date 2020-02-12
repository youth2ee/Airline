package com.airline.a1.board;

import java.util.List;



import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO extends BoardVO{
	

	private List<NoticeFilesVO> noticeFiles;
				
}
