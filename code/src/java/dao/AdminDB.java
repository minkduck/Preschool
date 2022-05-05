/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Admin;

/**
 *
 * @author ADMIN
 */
public class AdminDB implements Serializable {

    Connection conn = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    public Admin getAdmin(int username) {
        Admin ad = null;
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select Password from admin where Admin = ? ");
            stm.setInt(1, username);
            rs = stm.executeQuery();
            if (rs.next()) {
                String ps = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return ad;
    }

    public Admin checkLogin(String username, String pss) {

        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select * from Admin where Admin = ? and Password = ? ");
            stm.setString(1, username);
            stm.setString(2, pss);
            rs = stm.executeQuery();
            if (rs.next()) {
                String user = rs.getString(1);
                String ps = rs.getString(2);                
                Admin a = new Admin(user, ps);
                return a;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        AdminDB aDB = new AdminDB();
        System.out.println(aDB.checkLogin("preschool", "a"));
    }
}
