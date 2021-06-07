package com.triplive.repository;

import java.util.List;

import com.triplive.entity.Comment;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("CommentRepository")
public interface CommentRepository extends JpaRepository<Comment, Long> {

    

    List<Comment> findAllByCommunityBdNo(Long detail);

    // List<Comment> findByBdNo(Integer detail);


    
}
