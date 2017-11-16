package com.ips.persitence.db.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Daniel pusil<danielpusil@unicauca.edu.co>
 */
public class DataBaseConnection {//singleton connection

    private static DataBaseConnection INSTANCE = null;
    public static Statement stmtObj;
    public static Connection connObj;
    public static ResultSet resultSetObj;
    public static PreparedStatement pstmt;
    public static final int DEFAULT_PORT = 3306;
    public static String DEFAULT_DB_NAME = "ipsdb";

    // Private constructor suppresses 
    private DataBaseConnection() {
        getConnection();
    }

    /* Method To Establish Database Connection */
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String db_url = "jdbc:mysql://localhost:3306/ipsdb",
                    db_userName = "root",
                    db_password = "root";
            connObj = DriverManager.getConnection(db_url, db_userName, db_password);
        } catch (Exception sqlException) {
            sqlException.printStackTrace();
        }
        return connObj;
    }

    private synchronized static void createInstance() {
        if (INSTANCE == null) {
            INSTANCE = new DataBaseConnection();
        }
    }

    public static DataBaseConnection getInstance() {
        if (INSTANCE == null) {
            createInstance();
        }
        return INSTANCE;
    }

    public static ResultSet executeQuery(String query) {
        try {
            if (createStatement() != 0) {
                resultSetObj = stmtObj.executeQuery(query);
            }
        } catch (SQLException sqlException) {
            Logger.getLogger(DataBaseConnection.class.getName()).log(Level.SEVERE, null, sqlException);
        }
        return resultSetObj;
    }

    public static int prepareStatement(String query) {
        int result = 0;
        try {
            pstmt = getConnection().prepareStatement(query);
            result = 1;
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public static int createStatement() {
        int result = 0;
        try {
            stmtObj = getConnection().createStatement();
            result = 1;
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public static void closeConnection() {
        try {
            connObj.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
