/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author ADMIN
 */
public class Teacher implements Serializable {

    private String TeaFname, TeaLname, Address, Email, Gender, Degree, TeaTel, TeaBirthday;
    private int TeaID, TeaNo;

    public Teacher() {
    }

    public Teacher(int TeaID) {
        this.TeaID = TeaID;
    }

    public Teacher(int TeaID, String TeaFname, String TeaLname, String TeaBirthday, int TeaNo, String TeaTel, String Address, String Email, String Gender, String Degree) {
        this.TeaID = TeaID;
        this.TeaFname = TeaFname;
        this.TeaLname = TeaLname;
        this.Address = Address;
        this.Email = Email;
        this.Gender = Gender;
        this.Degree = Degree;
        this.TeaNo = TeaNo;
        this.TeaTel = TeaTel;
        this.TeaBirthday = TeaBirthday;
    }

    public Teacher(String TeaFname, String TeaLname, String TeaBirthday, int TeaNo, String TeaTel, String Address, String Email, String Gender, String Degree) {
        this.TeaFname = TeaFname;
        this.TeaLname = TeaLname;
        this.Address = Address;
        this.Email = Email;
        this.Gender = Gender;
        this.Degree = Degree;
        this.TeaNo = TeaNo;
        this.TeaTel = TeaTel;
        this.TeaBirthday = TeaBirthday;
    }

    public Teacher(String TeaFname, String TeaLname, String Address, String Email, String Gender, String Degree, int TeaID, int TeaNo, String TeaTel, String TeaBirthday) {
        this.TeaFname = TeaFname;
        this.TeaLname = TeaLname;
        this.Address = Address;
        this.Email = Email;
        this.Gender = Gender;
        this.Degree = Degree;
        this.TeaID = TeaID;
        this.TeaNo = TeaNo;
        this.TeaTel = TeaTel;
        this.TeaBirthday = TeaBirthday;
    }

    public String getTeaFname() {
        return TeaFname;
    }

    public void setTeaFname(String TeaFname) {
        this.TeaFname = TeaFname;
    }

    public String getTeaLname() {
        return TeaLname;
    }

    public void setTeaLname(String TeaLname) {
        this.TeaLname = TeaLname;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getDegree() {
        return Degree;
    }

    public void setDegree(String Degree) {
        this.Degree = Degree;
    }

    public int getTeaID() {
        return TeaID;
    }

    public void setTeaID(int TeaID) {
        this.TeaID = TeaID;
    }

    public int getTeaNo() {
        return TeaNo;
    }

    public void setTeaNo(int TeaNo) {
        this.TeaNo = TeaNo;
    }

    public String getTeaTel() {
        return TeaTel;
    }

    public void setTeaTel(String TeaTel) {
        this.TeaTel = TeaTel;
    }

    public String getTeaBirthday() {
        return TeaBirthday;
    }

    public void setTeaBirthday(String TeaBirthday) {
        this.TeaBirthday = TeaBirthday;
    }

    @Override
    public String toString() {
        return "Teacher{" + "TeaFname=" + TeaFname + ", TeaLname=" + TeaLname
                + ", Address=" + Address + ", Email=" + Email + ", Gender="
                + Gender + ", Degree=" + Degree + ", TeaID=" + TeaID + ", TeaNo="
                + TeaNo + ", TeaTel=" + TeaTel + ", TeaBirthday=" + TeaBirthday + '}';
    }
}
