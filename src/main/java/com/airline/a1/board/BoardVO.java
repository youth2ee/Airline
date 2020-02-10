package com.airline.a1.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {

		private int num;
		private String cate;
		private String title;
		private String writer;
		private String contents;
		private Date regDate;
		private int hit;
		private String textContents;
		private String fix;

}
