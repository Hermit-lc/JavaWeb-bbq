package com.hd.controller;

import com.hd.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    /*查询所有消息和评论*/
    @RequestMapping("/adminIndex")
    public String adminIndex(Model model,HttpSession httpSession){
        List<Map<String,Object>> list=adminService.selectAll();
        List<Map<String,Object>> comList=adminService.selectAllComment();
        model.addAttribute("adminNoteList",list);
        model.addAttribute("adminCommentList",comList);
        httpSession.setAttribute("comList",comList);
        return "adminIndex";
    }
    /*查询信息对应评论*/
    /*@RequestMapping("/adminIndexComment")
    public String adminIndexComment(Model model,int id){
        List<Map<String,Object>> list=adminService.selectAllComment(id);
        model.addAttribute("adminCommentList",list);

        return "adminIndex";
    }*/


    /*查询热门信息*/
    @RequestMapping("/adminHot")
    public String adminHotIndex(Model model){
        List<Map<String,Object>> list=adminService.selectHotAll();
        model.addAttribute("adminHotList",list);
        return "adminHot";
    }

    /*发公告*/
    @RequestMapping("/doAdminPost")
    public String doAdminPost(String title,String message){
        adminService.insertAffiche(title,message);
        return "forward:/adminAffiche";
    }

    /*admin公告页*/
    @RequestMapping("/adminAffiche")
    public String adminAffiche(Model model,HttpSession httpSession){
        List<Map<String,Object>> list = adminService.selectAffiche();
        model.addAttribute("adminAfficheList",list);
        httpSession.setAttribute("adminAfficheList",list);
        return "adminAffiche";
    }
    /*删公告*/
    @RequestMapping("/adminDeleteAffiche")
    public String deleteAffiche(int id){
        adminService.deleteAffiche(id);
        return "forward:/adminAffiche";
    }

    /*查询所有用户信息*/
    @RequestMapping("/adminManageUser")
    public String adminManageUser(Model model, HttpSession httpSession){
        List<Map<String,Object>> list=adminService.selectAllUser();
        model.addAttribute("allUserList",list);
        httpSession.setAttribute("allUserList",list);
        return "adminManageUser";
    }

    /*发公告页*/
    @RequestMapping("/adminPost")
    public String adminPost(){ return "adminPost"; }

    /*点赞*/
    @RequestMapping("/adminIndexDianzan")
    public String dianzan1(int id){
        adminService.updateLikes(id);
        return "forward:/adminIndex" ;
    }

    /*点赞*/
    @RequestMapping("/adminHotDianzan")
    public String dianzan2(int id){
        adminService.updateLikes(id);
        return "forward:/adminHot" ;
    }

    /*删帖*/
    @RequestMapping("/adminIndexShantie")
    public String shantie1(int id){
        adminService.deleteNote(id);
        return "forward:/adminIndex";
    }

    /*删帖*/
    @RequestMapping("/adminHotShantie")
    public String shantie2(int id){
        adminService.deleteNote(id);
        return "forward:/adminHot";
    }

    /*删用户*/
    @RequestMapping("/deleteUser")
    public String deleteUser(int uid){
        adminService.deleteUser(uid);
        return "forward:/adminManageUser";
    }




}
