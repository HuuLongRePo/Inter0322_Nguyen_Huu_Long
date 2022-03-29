package com.mysqlconnection;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class mySqlConnection {
    String url="jdbc:mysql://localhost:3306/";
    String username="root";;
    String password="root";;
    Connection connection;

    public boolean initialize() {
    //    Properties p = new Properties();
        try {
/*            p.load(new FileInputStream("database.properties"));
            url = p.getProperty("url");
            username = p.getProperty("username");
            password = p.getProperty("password");

            Class.forName("oracle.jdbc.OracleDriver");*/
            connection = DriverManager.getConnection(url, username, password);

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return true;
    }

}
