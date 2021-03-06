package com.triplive.service;

import java.util.List;
import com.triplive.entity.User;

public interface UserService {
    // 저장
    void saveUser(User user);

    // 수정
    void updateUser(User user);

    // 유저 삭제
    void deleteUser(User user);

    // 유저 상세 조회
    User getUser(User user);

    // 유저 목록 조회
    List<User> getUserList(Integer Page);
}
