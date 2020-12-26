package com.ash.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ash.entity.Room;
import com.ash.util.MySqlUtil;

public class RoomDao extends MySqlUtil{
	private Connection conn = null;
    private PreparedStatement psmt = null;
    private ResultSet rs = null;
    
    public ArrayList<Room> getAllRooms(){
    	ArrayList<Room> array = new ArrayList<>();
    	String sql="select * from room";
    	 try {
             conn=dataSource.getConnection();
             psmt=conn.prepareStatement(sql);
             rs=psmt.executeQuery();
             while(rs.next()){
                 Room Room = new Room();
                 Room.setRoomid(rs.getInt("roomid"));
                 Room.setRoomtype(rs.getString("roomtype"));
                 Room.setRoomprice(rs.getDouble("roomprice"));
                 Room.setStatus(rs.getString("status"));
                 Room.setRoomimg(rs.getString("roomimg"));
                 array.add(Room);
             }
         } catch (SQLException throwables) {
             throwables.printStackTrace();
         }
         return  array;
    }
    
    public boolean addRoom(Room room) {
    	String sql="insert into room values (?,?,?,?,?) ";
   	 try {
            conn=dataSource.getConnection();
            psmt=conn.prepareStatement(sql);
            psmt.setInt(1,room.getRoomid());
            psmt.setString(2,room.getRoomtype());
            psmt.setDouble(3,room.getRoomprice());
            psmt.setString(4,room.getStatus());
            psmt.setString(5,room.getRoomimg());
            int result=psmt.executeUpdate();
            if(result<=0) return false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
		return true;
    }
    
    public boolean updateRoom(Room room) {
    	String sql="update room set roomtype=?,"
    			+ "roomprice=?,status=?,roomimg=? where roomid=?";
      	 try {
               conn=dataSource.getConnection();
               psmt=conn.prepareStatement(sql);              
               psmt.setString(1,room.getRoomtype());
               psmt.setDouble(2,room.getRoomprice());
               psmt.setString(3,room.getStatus());
               psmt.setString(4,room.getRoomimg());
               psmt.setInt(5,room.getRoomid());
               int result=psmt.executeUpdate();
               if(result<=0) return false;
           } catch (SQLException throwables) {
               throwables.printStackTrace();
           }
   		return true;
    }
    
    public boolean deleteRoom(Integer roomid) {
    	String sql="delete from room where roomid=?";
    	try {
            conn=dataSource.getConnection();
            psmt=conn.prepareStatement(sql);              
            psmt.setInt(1,roomid);
            int result=psmt.executeUpdate();
            if(result<=0) return false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
		return true;
    }
}
