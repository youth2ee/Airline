package com.airline.a1.limo;

import java.sql.Date;
import java.util.List;

public class LimoVO {
	
	private int bookNum;
	private Date limoDate;
	private int limoPrice;
	private String id;
	private String depLoc;
	private String arrLoc;
	private String limoTime;
	private String seat;
	private int person;
	private int child;
	

	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	public int getPerson() {
		return person;
	}
	public void setPerson(int person) {
		this.person = person;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public String getLimoTime() {
		return limoTime;
	}
	public void setLimoTime(String limoTime) {
		this.limoTime = limoTime;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public Date getLimoDate() {
		return limoDate;
	}
	public void setLimoDate(Date limoDate) {
		this.limoDate = limoDate;
	}
	public int getLimoPrice() {
		return limoPrice;
	}
	public void setLimoPrice(int limoPrice) {
		this.limoPrice = limoPrice;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDepLoc() {
		return depLoc;
	}
	public void setDepLoc(String depLoc) {
		this.depLoc = depLoc;
	}
	public String getArrLoc() {
		return arrLoc;
	}
	public void setArrLoc(String arrLoc) {
		this.arrLoc = arrLoc;
	}
	
	
}