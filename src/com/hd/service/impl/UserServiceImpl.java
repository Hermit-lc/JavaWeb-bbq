package com.hd.service.impl;

import com.hd.bean.User;
import com.hd.mapper.UserMapper;
import com.hd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by Sunlurong on 2021/6/18.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    /*登录,查询用户密码是否存在*/
    @Override
    public User selectUserByUser(User user) {
        return userMapper.selectUserByUser(user);
    }

    /*注册*/
    public void insertZhuce(String username,String password,String phone){ userMapper.insertZhuce(username, password, phone); }

    /*查询所有用户*/
    public List<Map<String,Object>> selectAllUser(){
        return userMapper.selectAllUser();
    }

    /*查询所有公告*/
    public List<Map<String,Object>> selectAffiche() {return userMapper.selectAffiche();}


    /*查询所有信息*/
    public List<Map<String,Object>> selectAll(){ return userMapper.selectAll(); }

    /*发帖*/
    public void insertNote(int uid,String username,String title, String message){ userMapper.insertNote(uid,username,title,message); }

    /*热门信息*/
    public List<Map<String,Object>> selectHotAll(){return  userMapper.selectHotAll();}

    /*点赞功能*/
    public void updateLikes(int id){
        userMapper.updateLikes(id);
    }

    /*重命名*/
    public void updateName(int id,String username){
        userMapper.updateName(id,username);
    }
    public void updateNoteName(int id,String username){ userMapper.updateNoteName(id,username); }
    public void updateCommentName(int id,String username){ userMapper.updateCommentName(id,username); }

    /*修改密码*/
    public void updatePassword(int id,String password){
        userMapper.updatePassword(id,password);
    }

    /*发评论*/
    public void insertComment(int uid,String username,int nid, String message){
        userMapper.insertComment(uid,username,nid,message);
    }
    /*查询帖子评论*/
    public List<Map<String,Object>> selectAllComment(){ return userMapper.selectAllComment(); }//int nid    nid
}
