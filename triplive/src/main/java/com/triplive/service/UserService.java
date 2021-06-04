package com.triplive.service;

import java.util.List;
import java.util.Optional;

import com.triplive.entity.User;

public interface UserService {
    // 저장, 수정
    void saveUpdateUser(User user);

    // 유저 삭제
    void deleteUser(User user);

    // 유저 상세 조회
    User getUser(User user);

    // 유저 목록 조회
    List<User> getUserList(Integer Page);
}
