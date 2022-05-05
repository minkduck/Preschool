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
import model.Classes;

/**
 *
 * @author ADMIN
 */
public class ClassDB  {

    Connection conn = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    public int addClass(Classes cla) {
        int classID = -1;
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("insert into Class(ClassName,GroupClassID,TeaID) output inserted.ClassID values(?,?,?)");
            stm.setString(1, cla.getClassname());
            stm.setString(2, cla.getGroupClass());
            stm.setInt(3, cla.getTeaID());
            rs = stm.executeQuery();
            if (rs.next()) {
                classID = rs.getInt(1);
            } else {
                throw new RuntimeException("Invalid data!!!");
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return classID;
    }

    public ArrayList<Classes> getClasses() {
        ArrayList<Classes> cla = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select * from Class ");
            rs = stm.executeQuery();
            while (rs.next()) {
                int clID = rs.getInt(1);
                String clName = rs.getString(2);
                String GrClass = rs.getString(3);
                int TeaID = rs.getInt(4);
                System.out.println(clID + " " + clName + " " + GrClass + " " + TeaID);
                cla.add(new Classes(clID, clName, GrClass, TeaID));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
            throw new RuntimeException("Something wrong!!!");
        }
        return cla;
    }

    public int getGC1() {
        int id = 0;
        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select ClassID from Class where GroupClassID= N'12-18 tháng' ");
            rs = stm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                System.out.println(id);
            }
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();

        }
        return id;
    }

    public int getGC2() {
        int id = 0;

        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select ClassID from Class where GroupClassID= N'19-24 tháng' ");
            rs = stm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                System.out.println(id);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return id;
    }

    public int getGC3() {
        int id = 0;

        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select ClassID from Class where GroupClassID= N'25-36 tháng' ");
            rs = stm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                System.out.println(id);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return id;
    }

    public int getGC4() {
        int id = 0;

        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select ClassID from Class where GroupClassID= N'3-4 tuổi' ");
            rs = stm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                System.out.println(id);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return id;
    }

    public int getGC5() {
        int id = 0;

        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select ClassID from Class where GroupClassID= N'4-5 tuổi' ");
            rs = stm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                System.out.println(id);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return id;
    }

    public int getGC6() {
        int id = 0;

        try {
            conn = new DBContext().getConnection();
            stm = conn.prepareStatement("select ClassID from Class where GroupClassID= N'5-6 tuổi' ");
            rs = stm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                System.out.println(id);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return id;
    }

    public static void main(String[] args) {
        ClassDB cDB = new ClassDB();
        cDB.getGC3();

    }
}
