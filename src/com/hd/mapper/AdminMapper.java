package com.hd.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.Map;

public interface AdminMapper {
    /*查询所有信息*/
    /*select u.uid,u.username,n.id,title,message,insert_time,likes from note n,user u,likes l where n.username=u.username and u.uid=l.uid;*/
    @Select("select u.uid,u.username,id,title,message,insert_time,likes from note n,user u where n.uid=u.uid;")
    List<Map<String ,Object>> selectAll();

    /*查询所有信息和对应评论*/
    /*@Select("select u.uid,u.username,n.id,n.title,n.message nmessage,n.insert_time ntime,n.likes nlikes,c.id,c.insert_time ctime,c.likes clikes,c.message cmessage,c.uid,c.username from note n,user u,comment c where n.uid=u.uid and n.id=c.nid;")
    List<Map<String,Object>> selectAll();*/
    /*查询帖子对应评论*/
    @Select("select c.username,c.message,c.insert_time from note n,comment c where c.nid=n.id and n.id=1")
    List<Map<String, Object>> selectAllComment();


    /*查询热门信息*/
    /*select u.uid,u.username,n.id,title,message,insert_time,likes from note n,user u,likes l where n.username=u.username and u.uid=l.uid group by likes desc;*/
    @Select("select u.uid,u.username,id,title,message,insert_time,likes from note n,user u where n.uid=u.uid group by likes desc;")
    List<Map<String, Object>> selectHotAll();

    /*发公告*/
    @Insert("insert into affiche(title,message) values(#{param1},#{param2})")
    void insertAffiche(String title, String message);

    /*查询所有用户信息*/
    @Select("select uid,username,phone,password,register_time from user where is_admin=1")
    List<Map<String, Object>> selectAllUser();

    /*查询所有公告*/
    @Select("select id,title,message,insert_time from affiche")
    List<Map<String, Object>> selectAffiche();

    /*点赞*/
    @Update("update note set likes=likes+1 where id=#{id}")
    void updateLikes(int id);

    /*删帖*/
    @Delete("delete from note where id=#{id}")
    void deleteNote(int id);

    /*删公告*/
    @Delete("delete from affiche where id=#{id}")
    void deleteAffiche(int id);

    /*删用户*/
    @Delete("delete from user where uid=#{uid}")
    void deleteUser(int uid);





    /*查询对应评论*/
    /*@Select("select c.uid,c.username,c.id,c.message,c.insert_time,c.likes from comment c,note n where n.id=c.id and n.id=#{param1}")
    List<Map<String, Object>> selectAllComment(int id);*/

}
