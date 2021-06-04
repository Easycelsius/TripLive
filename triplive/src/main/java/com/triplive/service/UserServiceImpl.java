package com.triplive.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import com.triplive.entity.User;
import com.triplive.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Service("UserService")
@Transactional
@Log4j2
public class UserServiceImpl implements UserService {

    @Autowired
	private UserRepository userDAO;

    @Override
    public void saveUpdateUser(User user) {
        log.info("saveUpdateUser 실행");
        userDAO.save(user);
    }

    @Override
    public void deleteUser(User user) {
        log.info("deleteUser 실행");
        userDAO.deleteById(user.getId());
    }

    @Override
    public User getUser(User user) {
        log.info("유저 상세 조회 실행");
        return userDAO.getById(user.getId());
    }

    @Override
    public List<User> getUserList(Integer Page) {
        return null;
    }
    
}
