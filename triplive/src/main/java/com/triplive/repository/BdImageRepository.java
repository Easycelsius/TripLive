package com.triplive.repository;

import java.util.List;

import com.triplive.entity.BdImage;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("BdImageRepository")
public interface BdImageRepository extends JpaRepository<BdImage, Long>{
    List<BdImage> getByCommunityBdNo(Long bdNO);
    List<BdImage> findAllByCommunityBdNo(Long bdNO);
}
