package cn.edu.zjut.service;

import java.util.List;

import cn.edu.zjut.dao.StaffDAO;
import cn.edu.zjut.po.Staff;

public class StaffService {
	public List getAllStaffs() {
		StaffDAO dao = new StaffDAO();
		List staff = dao.findAllStaffs();
		return staff;
	}
	
	public boolean addStaff(Staff staff) {
		StaffDAO dao = new StaffDAO();
		dao.add(staff);
		return true;
	}
	
	public boolean updateStaff(Staff staff) {
		StaffDAO dao = new StaffDAO();
		dao.update(staff);
		return true;
	}
	
	public boolean deleteStaff(Staff staff) {
		StaffDAO dao = new StaffDAO();
		dao.delete(staff);
		return true;
	}
}
