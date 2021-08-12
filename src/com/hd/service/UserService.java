package com.hd.service;

import com.hd.bean.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by Sunlurong on 2021/6/18.
 */

public interface UserService {
    /*登录,查询用户是否存在*/
    User selectUserByUser(User user);

    /*注册,传用户名、密码、邮箱*/
    void insertZhuce(String username, String password,String phone);

    List<Map<String, Object>> selectAllUser();

    List<Map<String, Object>> selectAffiche();

    List<Map<String, Object>> selectAll();

    void insertNote(int uid, String username, String title, String message);

    List<Map<String, Object>> selectHotAll();

    void updateLikes(int id);

    void updateName(int uid, String username);

    void updatePassword(int uid, String password);

    void updateNoteName(int uid, String username);

    void insertComment(int uid, String username, int nid, String message);

    List<Map<String, Object>> selectAllComment();//int nid

    void updateCommentName(int uid, String username);
}

