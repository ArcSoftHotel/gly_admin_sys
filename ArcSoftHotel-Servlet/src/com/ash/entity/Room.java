package com.ash.entity;

public class Room {
	private Integer roomid;
	private String roomtype;
	private Double roomprice;
	private String status;
	private String roomimg;
	public Integer getRoomid() {
		return roomid;
	}
	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRoomimg() {
		return roomimg;
	}
	public void setRoomimg(String roomimg) {
		this.roomimg = roomimg;
	}
	public Double getRoomprice() {
		return roomprice;
	}
	public void setRoomprice(Double roomprice) {
		this.roomprice = roomprice;
	}
	
}
