package com.hd.bean;


/*消息表*/
public class Note {
    private int id;//帖子id
    private int uid ;//用户id
    private String username;//用户名
    private String title;//标题
    private String message;//内容
    private String insertTime;//发布时间
    private int likes;//点赞数

    public Note() {
    }

    public Note(int id, int uid, String username, String title, String message, String insertTime, int likes) {
        this.id = id;
        this.uid = uid;
        this.username = username;
        this.title = title;
        this.message = message;
        this.insertTime = insertTime;
        this.likes = likes;
    }

    @Override
    public String toString() {
        return "Note{" +
                "id=" + id +
                ", uid=" + uid +
                ", username='" + username + '\'' +
                ", title='" + title + '\'' +
                ", message='" + message + '\'' +
                ", insertTime='" + insertTime + '\'' +
                ", likes=" + likes +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(String insertTime) {
        this.insertTime = insertTime;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }
}
