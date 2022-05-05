/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author ADMIN
 */
public class Student implements Serializable {

    private int StuID;
    private String StuFname;
    private String StuLname;
    private String StuBirthday;
    private String StuGender;
    private int ParentID;
    private int ClassID;

    public Student() {
    }

    public Student(int StuID, String StuFname, String StuLname, String StuBirthday, String StuGender, int ParentID, int ClassID) {
        this.StuID = StuID;
        this.StuFname = StuFname;
        this.StuLname = StuLname;
        this.StuBirthday = StuBirthday;
        this.StuGender = StuGender;
        this.ParentID = ParentID;
        this.ClassID = ClassID;
    }

    public int getStuID() {
        return StuID;
    }

    public void setStuID(int StuID) {
        this.StuID = StuID;
    }

    public String getStuFname() {
        return StuFname;
    }

    public void setStuFname(String StuFname) {
        this.StuFname = StuFname;
    }

    public String getStuLname() {
        return StuLname;
    }

    public void setStuLname(String StuLname) {
        this.StuLname = StuLname;
    }

    public String getStuBirthday() {
        return StuBirthday;
    }

    public void setStuBirthday(String StuBirthday) {
        this.StuBirthday = StuBirthday;
    }

    public String getStuGender() {
        return StuGender;
    }

    public void setStuGender(String StuGender) {
        this.StuGender = StuGender;
    }

    public int getParentID() {
        return ParentID;
    }

    public void setParentID(int ParentID) {
        this.ParentID = ParentID;
    }

    public int getClassID() {
        return ClassID;
    }

    public void setClassID(int ClassID) {
        this.ClassID = ClassID;
    }

    public void getDate() {
        System.out.println(java.time.LocalDate.now());
    }

}
