package cn.edu.zjut.action;

import java.util.List;

import cn.edu.zjut.po.Staff;
import cn.edu.zjut.service.StaffService;

public class StaffAction {
	private List staffs;
	private Staff staff;
	public List getStaffs() {
		return staffs;
	}
	public void setStaffs(List staffs) {
		this.staffs = staffs;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	
	public String getAllStaffs() {
		StaffService staServ = new StaffService();
		staffs = staServ.getAllStaffs();
		return "success";
	}
	
	public String addStaff() {
		StaffService staServ = new StaffService();
		if(staServ.addStaff(staff)) {
			return "success";
		}
		return "fail";
	}
	
	public String updateStaff() {
		StaffService staServ = new StaffService();
		if(staServ.updateStaff(staff)) {
			return "success";
		}
		return "fail";
	}
	
	public String deleteStaff() {
		StaffService staServ = new StaffService();
		if(staServ.deleteStaff(staff)) {
			return "success";
		}
		return "fail";
	}
}
