package com.hd.controller;

import com.hd.bean.User;
import com.hd.service.GuestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class GuestController {
    @Autowired
    private GuestService guestService;

    /*查询所有信息*/
    @RequestMapping("/guestIndex")
    public String guestIndex2(Model model,HttpSession httpSession){
        List<Map<String,Object>> list=guestService.selectAll();
        httpSession.setAttribute("allNoteList",list);
        model.addAttribute("guestNoteList",list);
        return "guestIndex";
    }

    /*游客公告页*/
    @RequestMapping("/guestAffiche")
    public String guestAffiche(Model model,HttpSession httpSession){
        List<Map<String,Object>> list = guestService.selectAffiche();
        model.addAttribute("guestAfficheList",list);
        httpSession.setAttribute("guestAfficheList",list);
        return "guestAffiche";
    }

    /*查询热门信息*/
    @RequestMapping("/guestHotIndex")
    public String guestHotIndex(Model model){
        List<Map<String,Object>> list=guestService.selectHotAll();
        model.addAttribute("guestHotList",list);
        return "guestHot";
    }
}
