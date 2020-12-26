package com.ash.util;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MySqlUtil {
	public DataSource dataSource;
    public MySqlUtil(){
        try {
            Context context=new InitialContext();
            dataSource=(DataSource)context.lookup("java:comp/env/jdbc/ArcSoftHotel");
        }catch(NamingException ne){
            ne.printStackTrace();
        }
    }
    public Connection getConnection() throws Exception{
        return dataSource.getConnection();
    }
}
