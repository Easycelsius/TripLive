package com.triplive.service;

import java.util.List;

import com.triplive.entity.BdImage;

public interface BdImageService {
     // 저장
     void saveImage(BdImage bdImage);

     // 조회
     BdImage getImage(BdImage bdImage);
 
     // 글 목록 조회
     List<BdImage> getImageList(BdImage bdImage);
}
