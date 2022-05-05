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
import model.Admin;
import model.Teacher;

/**
 *
 * @author ADMIN
 */
public class TeacherDB implements Serializable {

    Connection conn = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    public int addTeacher(Teacher tea) {
        int teaID = -1;
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("Insert into Teacher(TeaFname,TeaLname,TeaBirthday,TeaNo,TeaTel,Address,Email,Gender,Degree) output inserted.TeaID \n"
                    + "values(?,?,?,?,?,?,?,?,?) ");
            stm.setString(1, tea.getTeaFname());
            stm.setString(2, tea.getTeaLname());
            stm.setString(3, tea.getTeaBirthday());
            stm.setInt(4, tea.getTeaNo());
            stm.setString(5, tea.getTeaTel());
            stm.setString(6, tea.getAddress());
            stm.setString(7, tea.getEmail());
            stm.setString(8, tea.getGender());
            stm.setString(9, tea.getDegree());
            rs = stm.executeQuery();
            if (rs.next()) {
                teaID = rs.getInt(1);
            } else {
                throw new RuntimeException("Invalid data!!!");
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return teaID;
    }

    public ArrayList<Teacher> getTeacher() {
        ArrayList<Teacher> tea = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select * from Teacher ");
            rs = stm.executeQuery();
            while (rs.next()) {
                int tID = rs.getInt(1);
                String Fname = rs.getString(2);
                String Lname = rs.getString(3);
                String birthday = rs.getString(4);
                int No = rs.getInt(5);
                String Tel = rs.getString(6);
                String address = rs.getString(7);
                String email = rs.getString(8);
                String gender = rs.getString(9);
                String Degree = rs.getString(10);
                System.out.println(tID + " " + Fname + " " + Lname + " " + birthday + "" + No + " " + Tel + " " + address + " " +email+ " " +  gender + " " + Degree);
                tea.add(new Teacher(tID, Fname, Lname, birthday, No, Tel, address, email, gender, Degree));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
            throw new RuntimeException("Something wrong!!!");
        }
        return tea;
    }

    public int getCTeaID() {
        int id = 0;
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select teaID from Teacher ");
            rs = stm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                System.out.println(id);
            }
        } catch (Exception e) {
        }
        return id;
    }

    public static void main(String[] args) {
        TeacherDB tDB = new TeacherDB();
        tDB.getCTeaID();

    }
}
