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
import java.util.ArrayList;
import model.Parent;
import model.Student;
import model.Teacher;

/**
 *
 * @author ADMIN
 */
public class ParentDB implements Serializable {

    Connection conn = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    public int signUp(Parent pa) {
        int PaID = -1;
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("Insert into Parent(ParentFname,ParentLname,ParentBirthday,ParentNo,ParentTel,Address,Email,Password) output inserted.ParentID \n"
                    + "values(?,?,?,?,?,?,?,?)");
            stm.setString(1, pa.getParentFname());
            stm.setString(2, pa.getParentLname());
            stm.setString(3, pa.getParentBirthday());
            stm.setInt(4, pa.getParentNo());
            stm.setString(5, pa.getParentTel());
            stm.setString(6, pa.getAddress());
            stm.setString(7, pa.getEmail());
            stm.setString(8, pa.getPassword());
            rs = stm.executeQuery();
            if (rs.next()) {
                PaID = rs.getInt(1);
            } else {
                throw new RuntimeException("Invalid data!!!");
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return PaID;
    }

    public Parent getParent(int pID) {
        Parent acc = null;
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select ParentID, ParentFname,ParentLname,ParentBirthday,ParentNo,ParentTel,Address,Email,Password "
                    + "from Parent where ParentID = ? ");
            stm.setInt(1, pID);
            rs = stm.executeQuery();
            if (rs.next()) {
                int id = rs.getInt(1);
                String fname = rs.getString(2);
                String lname = rs.getString(3);
                String bithday = rs.getString(4);
                int No = rs.getInt(5);
                String tel = rs.getString(6);
                String adress = rs.getString(7);
                String email = rs.getString(8);
                String password = rs.getString(9);
                acc = new Parent(id, fname, lname, bithday, No, tel, adress, email, password);
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return acc;
    }

    public ArrayList<Parent> getInfor(int pID) {
        ArrayList<Parent> pa = new ArrayList<>();

        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select ParentID, ParentFname,ParentLname,ParentBirthday,ParentNo,ParentTel,Address,Email,Password "
                    + "from Parent where ParentID = ? ");
            stm.setInt(1, pID);
            rs = stm.executeQuery();
            if (rs.next()) {
                int id = rs.getInt(1);
                String fname = rs.getString(2);
                String lname = rs.getString(3);
                String birthday = rs.getString(4);
                int No = rs.getInt(5);
                String tel = rs.getString(6);
                String address = rs.getString(7);
                String email = rs.getString(8);
                String password = rs.getString(9);
                System.out.println(id + " " + fname + " " + lname + " " + birthday + " " + No + " " + tel + " " + address + " " + email+ " " +password);
                pa.add(new Parent(id, fname, lname, birthday, No, tel, address, email, password));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return pa;
    }
}
