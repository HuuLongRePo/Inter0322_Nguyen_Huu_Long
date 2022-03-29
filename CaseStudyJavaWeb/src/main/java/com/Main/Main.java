package com.Main;

import com.mysqlconnection.mySqlConnection;

public class Main {
    public static void main(String[] args) {
        mySqlConnection db = new mySqlConnection();

        if(db.initialize()) {
            System.out.println("Database connecting");
        }
    }
}
