package com.triplive.service;

import java.util.List;

import com.triplive.entity.Comment;

public interface CommentService {
    // 댓글 전체 조회
    List<Comment> getCommentList(Long detail);
}
