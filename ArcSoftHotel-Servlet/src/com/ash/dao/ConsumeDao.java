package com.ash.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ash.entity.Consume;
import com.ash.util.MySqlUtil;

public class ConsumeDao extends MySqlUtil{
	private Connection conn = null;
    private PreparedStatement psmt = null;
    private ResultSet rs = null;
    
    public ArrayList<Consume> selectConsume(String userid) throws SQLException {
    	ArrayList<Consume> array = new ArrayList<>();
    	String sql = "select * from consume where userid=?";
    	try {
            conn=dataSource.getConnection();
            psmt=conn.prepareStatement(sql);
            psmt.setString(1,userid);
            rs=psmt.executeQuery();
            while(rs.next()){
               Consume cons = new Consume();
               cons.setUserid(rs.getString("userid"));
               cons.setRoomid(rs.getInt("roomid"));
               cons.setRoomprice(rs.getDouble("roomprice"));
               cons.setService_price(rs.getDouble("service_price"));
               cons.setDate(rs.getDate("date"));
               array.add(cons);
            }
        } catch (SQLException throwables) {
            conn.close();
       	 throwables.printStackTrace();          
        }
   	 conn.close();
   	 return array;
    }
    
    public boolean updateConsume(Consume consume) throws SQLException {
    	String sql = "update consume set userid=?,roomid=?,roomprice=?,service_price=?"
    			+ " where date=?";
    	try {
    		conn=dataSource.getConnection();
            psmt=conn.prepareStatement(sql);
            psmt.setString(1,consume.getUserid());
            psmt.setInt(2,consume.getRoomid());
            psmt.setDouble(3,consume.getRoomprice());
            psmt.setDouble(4,consume.getService_price());
            psmt.setDate(5,consume.getDate());
            int result=psmt.executeUpdate();
            if(result<=0) return false;
    	}catch (SQLException throwables) {
     	   conn.close();
           throwables.printStackTrace();
       }
    	conn.close();
    	return true;	
    }
}
