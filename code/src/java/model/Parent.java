/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ParentDB;
import java.io.Serializable;

/**
 *
 * @author ADMIN
 */
public class Parent implements Serializable {

    private int ParentID;
    private String ParentFname;
    private String ParentLname;
    private String ParentBirthday;
    private int ParentNo;
    private String ParentTel;
    private String Address;
    private String Email;
    private String Password;

    public Parent() {
    }

    public Parent(String ParentFname, String ParentLname, String ParentBirthday, int ParentNo, String ParentTel, String Address, String Email, String Password) {
        this.ParentFname = ParentFname;
        this.ParentLname = ParentLname;
        this.ParentBirthday = ParentBirthday;
        this.ParentNo = ParentNo;
        this.ParentTel = ParentTel;
        this.Address = Address;
        this.Email = Email;
        this.Password = Password;
    }

    public Parent(int ParentID, String ParentFname, String ParentLname, String ParentBirthday, int ParentNo, String ParentTel, String Address, String Email, String Password) {
        this.ParentID = ParentID;
        this.ParentFname = ParentFname;
        this.ParentLname = ParentLname;
        this.ParentBirthday = ParentBirthday;
        this.ParentNo = ParentNo;
        this.ParentTel = ParentTel;
        this.Address = Address;
        this.Email = Email;
        this.Password = Password;
    }

    public int getParentID() {
        return ParentID;
    }

    public void setParentID(int ParentID) {
        this.ParentID = ParentID;
    }

    public String getParentFname() {
        return ParentFname;
    }

    public void setParentFname(String ParentFname) {
        this.ParentFname = ParentFname;
    }

    public String getParentLname() {
        return ParentLname;
    }

    public void setParentLname(String ParentLname) {
        this.ParentLname = ParentLname;
    }

    public String getParentBirthday() {
        return ParentBirthday;
    }

    public void setParentBirthday(String ParentBirthday) {
        this.ParentBirthday = ParentBirthday;
    }

    public int getParentNo() {
        return ParentNo;
    }

    public void setParentNo(int ParentNo) {
        this.ParentNo = ParentNo;
    }

    public String getParentTel() {
        return ParentTel;
    }

    public void setParentTel(String ParentTel) {
        this.ParentTel = ParentTel;
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

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public Parent loginParent(int user, String pw) {
        ParentDB pDB = new ParentDB();
        Parent p = pDB.getParent(user);
        if (pw.equals(p.Password)) {
            return p;
        } else {
            throw new RuntimeException("Login failed!!!");
        }
    }
}
