package com.hd.bean;

import org.apache.ibatis.annotations.Select;

/**
 * Created by Sunlurong on 2021/6/18.
 */

/*用户表*/
public class User {
    private Integer uid;//用户id
    private String username;//用户名
    private String password;//密码
    private String phone;//手机号
    private String registerTime;//注册时间
    private int is_admin;//账号类型

    public User() {
    }

    public User(Integer uid, String username, String password, String phone, String registerTime, int is_admin) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.registerTime = registerTime;
        this.is_admin = is_admin;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", registerTime='" + registerTime + '\'' +
                ", is_admin=" + is_admin +
                '}';
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(String registerTime) {
        this.registerTime = registerTime;
    }

    public int getIs_admin() {
        return is_admin;
    }

    public void setIs_admin(int is_admin) {
        this.is_admin = is_admin;
    }
}
