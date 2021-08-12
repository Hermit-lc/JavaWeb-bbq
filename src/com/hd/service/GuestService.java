package com.hd.service;

import java.util.List;
import java.util.Map;

public interface GuestService {

    /*查询所有信息*/
    List<Map<String, Object>> selectAll();

    /*查询公告*/
    List<Map<String, Object>> selectAffiche();

    /*查询热门信息*/
    List<Map<String, Object>> selectHotAll();
}
