package com.triplive.service;

import java.util.List;

import javax.transaction.Transactional;

import com.triplive.entity.BdImage;
import com.triplive.repository.BdImageRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Service("BdImageService")
@Transactional
@Log4j2
public class BdImageServiceImpl implements BdImageService {

     @Autowired
     BdImageRepository bdImageDAO;

     @Override
     public void saveImage(BdImage bdImage) {
          bdImageDAO.save(bdImage);
     }

     @Override
     public List<BdImage> getImage(BdImage bdImage) {
          return bdImageDAO.getByCommunityBdNo(bdImage.getCommunity().getBdNo());
     }

     @Override
     public List<BdImage> getImageList(BdImage bdImage) {
          return bdImageDAO.findAllByCommunityBdNo(bdImage.getCommunity().getBdNo());
     }

}
