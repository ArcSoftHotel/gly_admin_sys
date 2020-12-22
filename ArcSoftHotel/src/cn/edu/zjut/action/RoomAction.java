package cn.edu.zjut.action;

import java.util.List;

import cn.edu.zjut.po.Room;
import cn.edu.zjut.service.RoomService;

public class RoomAction {
	private List rooms;
	private Room room;

	public List getRooms() {
		return rooms;
	}

	public void setRooms(List rooms) {
		this.rooms = rooms;
	}	

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}
	
	public String getAllRooms() {
		RoomService roomServ = new RoomService();
		rooms = roomServ.getAllRooms();
		return "success";
	}
	
	public String addRoom() {
		RoomService roomServ = new RoomService();
		if(roomServ.addRoom(room)) {
			return "success";
		}
		return "fail";
	}
	
	public String updateRoom() {
		RoomService roomServ = new RoomService();
		if(roomServ.updateRoom(room)) {
			return "success";
		}
		return "fail";
	}
	
	public String deleteRoom() {
		RoomService roomServ = new RoomService();
		if(roomServ.deleteRoom(room)) {
			return "success";
		}
		return "fail";
	}
}
