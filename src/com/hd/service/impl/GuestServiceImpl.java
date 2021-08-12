package com.hd.service.impl;

import com.hd.mapper.GuestMapper;
import com.hd.service.GuestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class GuestServiceImpl implements GuestService {
    @Autowired
    private GuestMapper guestMapper;

    /*查询所有信息*/
    public List<Map<String,Object>> selectAll(){
        return guestMapper.selectAll();
    }

    /*查询所有公告*/
    public List<Map<String,Object>> selectAffiche() {return guestMapper.selectAffiche();}

    /*热门信息*/
    public List<Map<String,Object>> selectHotAll(){return  guestMapper.selectHotAll();}
}
