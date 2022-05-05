/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Classes {
    private int ClassID;
    private String Classname;
    private String GroupClass;
    private int TeaID;

    public Classes() {
    }

    public Classes(int ClassID, String Classname, String GroupClass, int TeaID) {
        this.ClassID = ClassID;
        this.Classname = Classname;
        this.GroupClass = GroupClass;
        this.TeaID = TeaID;
    }

    public int getClassID() {
        return ClassID;
    }

    public void setClassID(int ClassID) {
        this.ClassID = ClassID;
    }

    public String getClassname() {
        return Classname;
    }

    public void setClassname(String Classname) {
        this.Classname = Classname;
    }

    public String getGroupClass() {
        return GroupClass;
    }

    public void setGroupClass(String GroupClass) {
        this.GroupClass = GroupClass;
    }

    public int getTeaID() {
        return TeaID;
    }

    public void setTeaID(int TeaID) {
        this.TeaID = TeaID;
    }

    @Override
    public String toString() {
        return "Class{" + "ClassID=" + ClassID + ", Classname=" + Classname + ", GroupClass=" + GroupClass + ", TeaID=" + TeaID + '}';
    }
    
    
    
}
