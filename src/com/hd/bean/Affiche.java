package com.hd.bean;

/*公告表*/
public class Affiche {
    private int id;//公告id
    private String title;//标题
    private String message;//内容
    private String insertTime;//发布时间

    public Affiche() {
    }

    public Affiche(int id, String title, String message, String insertTime) {
        this.id = id;
        this.title = title;
        this.message = message;
        this.insertTime = insertTime;
    }

    @Override
    public String toString() {
        return "Affiche{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", message='" + message + '\'' +
                ", insertTime='" + insertTime + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
}
