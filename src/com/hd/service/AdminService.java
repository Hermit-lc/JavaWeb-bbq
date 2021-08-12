package com.hd.service;

import java.util.List;
import java.util.Map;

public interface AdminService {
    List<Map<String, Object>> selectAll();

    List<Map<String, Object>> selectHotAll();

    void insertAffiche(String title, String message);

    List<Map<String, Object>> selectAllUser();

    List<Map<String, Object>> selectAffiche();

    void updateLikes(int id);

    void deleteNote(int id);

    void deleteAffiche(int id);

    void deleteUser(int uid);

    List<Map<String, Object>> selectAllComment();



    /*List<Map<String, Object>> selectAllComment(int id);*/
}
