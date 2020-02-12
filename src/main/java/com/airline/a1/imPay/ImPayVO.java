package com.airline.a1.imPay;

import org.springframework.stereotype.Component;

import com.airline.a1.member.MembersVO;

import lombok.Data;

@Data
public class ImPayVO {

	private String name;
	private int amount;
	private int mil;
	
	private int ramount;
	
	private String bpnum;

	private int milplus;
	
	private MembersVO membersVO;

	private String bnum;
	
	
	
}
