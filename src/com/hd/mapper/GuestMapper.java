package com.hd.mapper;

import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface GuestMapper {

    /*查询所有信息*/
    @Select("select u.uid,u.username,id,title,message,insert_time,likes from note n,user u where n.uid=u.uid;")
    List<Map<String ,Object>> selectAll();

    /*查询所有公告*/
    @Select("select title,message,insert_time from affiche")
    List<Map<String, Object>> selectAffiche();

    /*查询热门信息*/
    @Select("select u.uid,u.username,id,title,message,insert_time,likes from note n,user u where n.uid=u.uid group by likes desc;")
    List<Map<String, Object>> selectHotAll();
}
