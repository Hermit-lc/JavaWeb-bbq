package com.hd.controller;

import com.hd.bean.User;
import com.hd.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.security.auth.login.CredentialException;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * Created by Sunlurong on 2021/6/18.
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    /*登录*/
    @RequestMapping("/userLogin")
    public String login(){return "userLogin";}

    /*注册*/
    @RequestMapping("/userRegister")
    public String register(){return "userRegister";}

    /*注册按钮,调用注册方法,返回到login登录页*/
    @RequestMapping("/doZhuce")
    public String doZhuce(String username,String password,String phone, HttpSession httpSession){
        userService.insertZhuce(username,password,phone);
        return "userLogin";
    }

    /*登录按钮,调用登录方法,判断isadmin,返回到/bbq或admin*/
    @RequestMapping("/doLogin")
    public String doLogin(User user, HttpSession httpSession){
        User loginUser=userService.selectUserByUser(user);
        //判断是否存在，若存在存到Session 域中，不存在则跳转回登录页
        if(loginUser!=null){
            httpSession.setAttribute("loginUser",loginUser);
            int admin = loginUser.getIs_admin();
            if (admin==2){ return "forward:/adminIndex"; }
            else{return "forward:/userIndex";}
        } else{
            return "userLogin";
        }
    }

    /*用户公告页*/
    @RequestMapping("/userAffiche")
    public String userAffiche(Model model,HttpSession httpSession){
        List<Map<String,Object>> list = userService.selectAffiche();
        model.addAttribute("userAfficheList",list);
        httpSession.setAttribute("userAfficheList",list);
        return "userAffiche";
    }

    /*发帖页*/
    @RequestMapping("/userPost")
    public String post(Model model,HttpSession httpSession){
        List<Map<String,Object>> list=userService.selectAll();
        model.addAttribute("userNoteList",list);
        httpSession.setAttribute("userNoteList",list);
        return "userPost"; }


    /*用户主页*/
    @RequestMapping("/userIndex")
    public String userIndex(Model model,HttpSession httpSession){
        List<Map<String,Object>> list1=userService.selectAll();
        model.addAttribute("userNoteList",list1);
        httpSession.setAttribute("userNoteList",list1);

        /*获取评论*/
        List<Map<String,Object>> list = userService.selectAllComment();//nid
        httpSession.setAttribute("comList",list);

        return "userIndex";
    }
    /*获取评论*/
    /*@RequestMapping("/getComment")
    public void selectComment(int nid,HttpSession httpSession){
        List<Map<String,Object>> list = userService.selectAllComment(nid);
        httpSession.setAttribute("comList",list);
    }*/

    /*发帖*/
    @RequestMapping("/doPost")
    public String doPost(int uid,String username,String title,String message){
        userService.insertNote(uid,username,title,message);
        return "forward:/userIndex";
    }


    /*查询热门信息,存到hotList,返回到userHot热门页*/
    @RequestMapping("/userHotIndex")
    public String userHotIndex(Model model,HttpSession httpSession){
        List<Map<String,Object>> list=userService.selectHotAll();
        model.addAttribute("userHotList",list);
        httpSession.setAttribute("userHotList",list);
        return "userHot";
    }

    /*点赞按钮*/
    @RequestMapping("/userIndexDianzan")
    public String dianzan1(int id){
        userService.updateLikes(id);
        return "forward:/userIndex" ;
    }

    /*点赞按钮*/
    @RequestMapping("/userHotDianzan")
    public String dianzan2(int id){
        userService.updateLikes(id);
        return "forward:/userHotIndex" ;
    }

    /*用户个人信息页*/
    @RequestMapping("/userManagement")
    public String userManagement(){ return "userManagement"; }

    /*重命名*/
    @RequestMapping("/rename")
    public String rename(){return "rename";}
    @RequestMapping("/doRename")
    public String doRename(int uid,String username){
        userService.updateName(uid,username);
        userService.updateNoteName(uid,username);
        userService.updateCommentName(uid,username);
        return "userLogin";
    }

    /*修改密码*/
    @RequestMapping("/updatePassword")
    public String updatePassword(){return "updatePassword";}

    @RequestMapping("/doUpdatePassword")
    public String doUpdatePassword(int uid,String password){
        userService.updatePassword(uid,password);
        return "userLogin";
    }

    /*发评论页*/
    @RequestMapping("/userComment")
    public String adminComment(){ return "userComment"; }
    /*发评论*/
    @RequestMapping("/doUserComment")
    public String doAdminComment(int uid,String username,int nid,String message){
        userService.insertComment(uid,username,nid,message);
        return "forward:/userIndex";
    }
}
