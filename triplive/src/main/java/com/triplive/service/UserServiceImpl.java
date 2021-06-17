package com.triplive.service;

import java.util.List;

import javax.transaction.Transactional;

import com.triplive.entity.User;
import com.triplive.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Service("UserService")
@RequiredArgsConstructor
@Transactional
@Log4j2
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
	private UserRepository userDAO;

    // 저장
    @Override
    public void saveUser(User user) {
        log.info("saveUpdateUser 실행");
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        user.setPassword(encoder.encode(user.getPassword()));
        user.setAuth("ROLE_MEMBER"); // admin은 ROLE_ADMIN,ROLE_USER로 할당 필요
        userDAO.save(user);
    }

    // 수정
    @Override
    public void updateUser(User user) {
        log.info("saveUpdateUser 실행");
        userDAO.save(user);
    }

    // 유저 정보 삭제
    @Override
    public void deleteUser(User user) {
        log.info("deleteUser 실행");
        userDAO.deleteById(user.getId());
    }

    // ID로 유저 정보 조회
    @Override
    public User getUser(User user) {
        log.info("유저 상세 조회 실행");
        return userDAO.getById(user.getId());
    }

    // ID 중복 체크
    public boolean checkId(String id) {
        log.info("ID 중복 체크 실행");
        return userDAO.existsById(id);
    }

    @Override
    public List<User> getUserList(Integer Page) {
        return null;
    }

    // 유저수 조회
    public Long getUserCount() {
        return userDAO.count();
    }

    // 유저 전체 조회
    public List<User> getUserListAll(){
        return userDAO.findAll();
    }

    // Spring Security
    @Override // 기본적인 반환 타입은 UserDetails, UserDetails를 상속받은 UserInfo로 반환 타입 지정 (자동으로 다운 캐스팅됨)
    public User loadUserByUsername(String id) throws UsernameNotFoundException { // 시큐리티에서 지정한 서비스이기 때문에 이 메소드를 필수로 구현
        return userDAO.findById(id)
            .orElseThrow(() -> new UsernameNotFoundException((id)));
    }
    
}
