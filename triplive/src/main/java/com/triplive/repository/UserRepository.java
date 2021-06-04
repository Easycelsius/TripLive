package com.triplive.repository;

import com.triplive.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, String> {

    /* 
        insert -> save(엔티티 객체)
        select -> findById(키 타입), getOne(키 타입)
        update -> save(엔티티 타입)
        delete -> deleteById(키 타입), delete(엔티티 객체)
    */
}