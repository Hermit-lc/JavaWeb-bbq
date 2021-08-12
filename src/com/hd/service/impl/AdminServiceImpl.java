package com.hd.service.impl;

import com.hd.bean.Comment;
import com.hd.mapper.AdminMapper;
import com.hd.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    @Override
    /*查询所有信息*/
    public List<Map<String,Object>> selectAll(){
        return adminMapper.selectAll();
    }
    /*查询帖子评论*/
    public List<Map<String,Object>> selectAllComment(){ return adminMapper.selectAllComment(); }

    /*热门信息*/
    public List<Map<String,Object>> selectHotAll(){return  adminMapper.selectHotAll();}

    /*发公告*/
    public void insertAffiche(String title, String message){
        adminMapper.insertAffiche(title,message);
    }

    /*发评论*/
    /*public void insertComment(int uid,String username,int nid, String message){
        adminMapper.insertComment(uid,username,nid,message);
    }*/

    /*查询所有用户信息*/
    public List<Map<String,Object>> selectAllUser(){ return adminMapper.selectAllUser(); }

    /*查询所有公告*/
    public List<Map<String,Object>> selectAffiche() {return adminMapper.selectAffiche();}

    /*点赞功能*/
    public void updateLikes(int id){
        adminMapper.updateLikes(id);
    }

    /*删帖功能*/
    public void deleteNote(int id){
        adminMapper.deleteNote(id);
    }

    /*删公告功能*/
    public void deleteAffiche(int id){ adminMapper.deleteAffiche(id); }

    /*删用户功能*/
    public void deleteUser(int uid){ adminMapper.deleteUser(uid); }

    /*查询对应评论*/
    /*public List<Map<String,Object>> selectAllComment(int id){ return adminMapper.selectAllComment(id); }*/
}
