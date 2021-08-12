package com.hd.mapper;

import com.hd.bean.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.Map;

/**
 * Created by Sunlurong on 2021/6/18.
 */

public interface UserMapper {

    /*用户登录*/
    User selectUserByUser(User user);

    /*用户注册*/
    @Insert("insert into user(username,password,phone) values(#{param1},#{param2},#{param3})")
    void insertZhuce(String username, String password,String phone);

    /*查询所有用户信息*/
    @Select("select uid,name,phone,password,register_time from user where is_admin=1")
    List<Map<String, Object>> selectAllUser();

    /*查询所有公告*/
    @Select("select title,message,insert_time from affiche")
    List<Map<String, Object>> selectAffiche();

    /*查询所有信息*/
    @Select("select u.uid,u.username,id,title,message,insert_time,likes from note n,user u where n.uid=u.uid;")
    List<Map<String ,Object>> selectAll();

    /*发帖功能*/
    @Insert("insert into note(uid,username,title,message) values(#{param1},#{param2},#{param3},#{param4});")
    void insertNote(int uid, String username, String title, String message);

    /*查询热门信息*/
    @Select("select u.uid,u.username,id,title,message,insert_time,likes from note n,user u where n.uid=u.uid group by likes desc;")
    List<Map<String, Object>> selectHotAll();

    /*点赞*/
    @Update("update note set likes=likes+1 where id=#{id}")
    void updateLikes(int id);

    /*重命名*/
    @Update("update user set username=#{param2} where uid=#{param1}")
    void updateName(int uid, String username);
    @Update("update note set username=#{param2} where uid=#{param1}")
    void updateNoteName(int uid, String username);
    @Update("update comment set username=#{param2} where uid=#{param1}")
    void updateCommentName(int id, String username);
    /*修改密码*/
    @Update("update user set password=#{param2} where uid=#{param1}")
    void updatePassword(int id, String password);

    /*发评论*/
    @Insert("insert into comment(uid,username,nid,message) values(#{param1},#{param2},#{param3},#{param4})")
    void insertComment(int uid, String username, int nid, String message);

    /*查询帖子对应评论*/
    @Select("select c.username,c.message,c.insert_time from note n,comment c where c.nid=n.id and c.nid=1 ")//and c.nid=#{param1}
    List<Map<String, Object>> selectAllComment();//int nid


}

