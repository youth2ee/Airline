package com.airline.a1.imPay;

import lombok.Data;

@Data
public class ImPayResultVO {

	private Boolean success;
	private String imp_uid;
	private String merchant_uid;
	private String pay_method;
	private int paid_amount;
	private String status;
	private String name;
	private String pg_provider;
	private String pg_tid;
	private int paid_at;
	private String receipt_url;
	private String apply_num;
	
	private int mil;
	private String bpnum;
	private int milplus;
	
	private String bnum;
	
}
