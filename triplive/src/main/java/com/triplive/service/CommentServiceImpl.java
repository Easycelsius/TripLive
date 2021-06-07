package com.triplive.service;

import java.util.List;

import javax.transaction.Transactional;

import com.triplive.entity.Comment;
import com.triplive.repository.CommentRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Service("CommentService")
@Transactional
@Log4j2
public class CommentServiceImpl implements CommentService{

    @Autowired
	private CommentRepository commentDAO;

    @Override
    public List<Comment> getCommentList(Long detail) {
        log.info("댓글 요청 : "+detail+"번 글");
        return commentDAO.findAllByCommunityBdNo(detail);
    }

    @Override
    public void saveCmt(Comment comment) {
        log.info("댓글 저장 : "+comment.getCommunity().getBdNo() +"번 글");
        commentDAO.save(comment);
    }

    public void deleteCmt(Long cmNo) {
        log.info("댓글 삭제 : "+cmNo+"번 글");
        commentDAO.deleteById(cmNo);
    }


    


    
}
