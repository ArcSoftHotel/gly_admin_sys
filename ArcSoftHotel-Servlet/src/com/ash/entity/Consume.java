package com.ash.entity;

import java.sql.Date;

public class Consume {
	private String userid;
	private Integer roomid;
	private Double roomprice;
	private Double service_price;
	private Date date;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Integer getRoomid() {
		return roomid;
	}
	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}
	public Double getRoomprice() {
		return roomprice;
	}
	public void setRoomprice(Double roomprice) {
		this.roomprice = roomprice;
	}
	public Double getService_price() {
		return service_price;
	}
	public void setService_price(Double service_price) {
		this.service_price = service_price;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
