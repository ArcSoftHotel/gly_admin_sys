package com.ash.dao;

import com.ash.entity.Admin;
import com.ash.util.MySqlUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao extends MySqlUtil {
    //进行数据库相关查询的操作
    private Connection conn = null;
    private PreparedStatement psmt = null;
    private ResultSet rs = null;

    public Admin Login_A(String adminid,String password){
        String sql="select * from admin where adminid=? AND password=?";
        Admin admin=new Admin();
        try {
            conn=dataSource.getConnection();

            psmt=conn.prepareStatement(sql);
            psmt.setString(1, adminid);
            psmt.setString(2, password);

            rs=psmt.executeQuery();
            if(rs.next()){
                admin.setAdminId(adminid);
                admin.setPassword(password);
            }else{
                return null;
            }
            rs.close();
            psmt.close();
            conn.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return admin;
    }

}