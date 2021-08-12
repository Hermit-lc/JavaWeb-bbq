package com.hd.bean;

//评论表
public class Comment {
    private int uid;//用户id
    private int username;//用户名
    private int id;//评论id
    private int nid;//帖子id
    private int message;//内容
    private int insertTime;//时间

    public Comment() {
    }

    public Comment(int uid, int username, int id, int nid, int message, int insertTime) {
        this.uid = uid;
        this.username = username;
        this.id = id;
        this.nid = nid;
        this.message = message;
        this.insertTime = insertTime;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "uid=" + uid +
                ", username=" + username +
                ", id=" + id +
                ", nid=" + nid +
                ", message=" + message +
                ", insertTime=" + insertTime +
                '}';
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getUsername() {
        return username;
    }

    public void setUsername(int username) {
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public int getMessage() {
        return message;
    }

    public void setMessage(int message) {
        this.message = message;
    }

    public int getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(int insertTime) {
        this.insertTime = insertTime;
    }
}
