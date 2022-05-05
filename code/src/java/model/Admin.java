/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.AdminDB;
import java.io.Serializable;

/**
 *
 * @author ADMIN
 */
public class Admin implements Serializable {

    private String username;
    private String password;

    public Admin() {
    }

    public Admin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
    
    public Admin loginAdmin(int user, String pw) {
        AdminDB aDB = new AdminDB();
        Admin a = aDB.getAdmin(user);
        if (pw.equals(a.password)) {
            return a;
        } else {
            return null;
        }
    }

    public int login(int user, String pw) {
        Admin ad = new Admin();
        Parent pa = new Parent();
        if (ad.loginAdmin(user, pw) != null) {
            return 1;
        } else if (pa.loginParent(user, pw) != null) {
            return 2;
        } else {
            return 0;
        }
    }
}
