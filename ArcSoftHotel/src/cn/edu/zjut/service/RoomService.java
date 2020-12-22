package cn.edu.zjut.service;

import java.util.List;

import cn.edu.zjut.dao.RoomDAO;
import cn.edu.zjut.po.Room;

public class RoomService {
	public List getAllRooms() {
		RoomDAO dao = new RoomDAO();
		List rooms = dao.findAllRooms();
		return rooms;
	}
	
	public boolean addRoom(Room room) {
		RoomDAO dao = new RoomDAO();
		dao.add(room);
		return true;
	}
	
	public boolean updateRoom(Room room) {
		RoomDAO dao = new RoomDAO();
		dao.update(room);
		return true;
	}
	
	public boolean deleteRoom(Room room) {
		RoomDAO dao = new RoomDAO();
		dao.delete(room);
		return true;
	}
}
