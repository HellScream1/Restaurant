package com.zzu.bean;

import java.util.Date;

public class User {
    private Integer id;

    private String pwd;

    private String name;

    private String phone;

    private String email;

    private Integer addrnum;

    private String addrstring;

    private String deacription;

    private String gender;

    private Date birthday;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getAddrnum() {
        return addrnum;
    }

    public void setAddrnum(Integer addrnum) {
        this.addrnum = addrnum;
    }

    public String getAddrstring() {
        return addrstring;
    }

    public void setAddrstring(String addrstring) {
        this.addrstring = addrstring == null ? null : addrstring.trim();
    }

    public String getDeacription() {
        return deacription;
    }

    public void setDeacription(String deacription) {
        this.deacription = deacription == null ? null : deacription.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}