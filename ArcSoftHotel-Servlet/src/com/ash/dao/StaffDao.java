package com.ash.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ash.entity.Staff;
import com.ash.util.MySqlUtil;

public class StaffDao extends MySqlUtil{
	private Connection conn = null;
    private PreparedStatement psmt = null;
    private ResultSet rs = null;
    
    public ArrayList<Staff> getAllStaffs(){
    	ArrayList<Staff> array = new ArrayList<>();
    	String sql="select * from staff";
    	 try {
             conn=dataSource.getConnection();

             psmt=conn.prepareStatement(sql);
             rs=psmt.executeQuery();
             while(rs.next()){
                 Staff staff = new Staff();
                 staff.setStaffid(rs.getInt("staffid"));
                 staff.setStaffname(rs.getString("staffname"));
                 staff.setDuty(rs.getString("duty"));
                 staff.setStatus(rs.getString("status"));
                 staff.setPhone(rs.getString("phone"));
                 array.add(staff);
             }
         } catch (SQLException throwables) {
             throwables.printStackTrace();
         }
         return  array;
    }
    
    public boolean addStaff(Staff staff) {
    	String sql="insert into staff values (?,?,?,?,?) ";
    	 try {
             conn=dataSource.getConnection();
             psmt=conn.prepareStatement(sql);
             psmt.setInt(1,staff.getStaffid());
             psmt.setString(2,staff.getStaffname());
             psmt.setString(3,staff.getDuty());
             psmt.setString(4,staff.getStatus());
             psmt.setString(5,staff.getPhone());
             int result=psmt.executeUpdate();
             if(result<=0) return false;
         } catch (SQLException throwables) {
             throwables.printStackTrace();
         }
		return true;
    }
    
    public boolean updateStaff(Staff staff) {
    	String sql="update staff set staffname=?,duty=?,"
    			+ "status=?,phone=? where staffid=?";
   	 try {
            conn=dataSource.getConnection();
            psmt=conn.prepareStatement(sql);
            psmt.setString(1,staff.getStaffname());
            psmt.setString(2,staff.getDuty());
            psmt.setString(3,staff.getStatus());
            psmt.setString(4,staff.getPhone());
            psmt.setInt(5,staff.getStaffid());
            int result=psmt.executeUpdate();
            if(result<=0) return false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
		return true;
    }
    
    public boolean deleteStaff(Integer staffid) {
    	String sql="delete from staff where staffid=?";
   	 try {
            conn=dataSource.getConnection();
            psmt=conn.prepareStatement(sql);
            psmt.setInt(1,staffid);
            int result=psmt.executeUpdate();
            if(result<=0) return false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
		return true;
    }
}
