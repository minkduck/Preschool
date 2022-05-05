/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class StudentDB implements Serializable {

    Connection conn = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    public int addStudent(Student stu, int paID, int clID) {
        int stuID = -1;
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("Insert into Student(StuFname,StuLname,StuBirthday,Gender,ParentID,ClassID) "
                    + "output inserted.StuID values (?,?,?,?,?,?) ");
            stm.setString(1, stu.getStuFname());
            stm.setString(2, stu.getStuLname());
            stm.setString(3, stu.getStuBirthday());
            stm.setString(4, stu.getStuGender());
            stm.setInt(5, paID);
            stm.setInt(6, clID);
            rs = stm.executeQuery();
            if (rs.next()) {
                stuID = rs.getInt(1);
            } else {
                throw new RuntimeException("Invalid data!!!");
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
        }
        return stuID;
    }

    public ArrayList<Student> getStudent(int paID) {
        ArrayList<Student> stu = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select StuID,StuFname,StuLname,StuBirthday,Gender,ParentID,ClassID from Student where ParentID = ? ");
            stm.setInt(1, paID);
            rs = stm.executeQuery();
            while (rs.next()) {
                int sID = rs.getInt(1);
                String Fname = rs.getString(2);
                String Lname = rs.getString(3);
                String birthday = rs.getString(4);
                String gender = rs.getString(5);
                int parent = rs.getInt(6);
                int cla = rs.getInt(7);
                System.out.println(sID + " " + Fname + " " + Lname + " " + birthday + gender + " " + parent + " " + cla);
                stu.add(new Student(sID, Fname, Lname, birthday, gender, parent, cla));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
            throw new RuntimeException("Something wrong!!!");
        }
        return stu;
    }
    public ArrayList<Student> getAllStudent() {
        ArrayList<Student> stu = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select StuID,StuFname,StuLname,StuBirthday,Gender,ParentID,ClassID from Student");
            rs = stm.executeQuery();
            while (rs.next()) {
                int sID = rs.getInt(1);
                String Fname = rs.getString(2);
                String Lname = rs.getString(3);
                String birthday = rs.getString(4);
                String gender = rs.getString(5);
                int parent = rs.getInt(6);
                int cla = rs.getInt(7);
                System.out.println(sID + " " + Fname + " " + Lname + " " + birthday + gender + " " + parent + " " + cla);
                stu.add(new Student(sID, Fname, Lname, birthday, gender, parent, cla));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
            throw new RuntimeException("Something wrong!!!");
        }
        return stu;
    }
    public static void main(String[] args) {
        StudentDB tDB = new StudentDB();
        tDB.getAllStudent();
    }

}
