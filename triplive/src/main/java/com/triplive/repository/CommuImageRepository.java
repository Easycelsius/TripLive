package com.triplive.repository;

import java.util.List;

import com.triplive.entity.BdImage;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("CommuImageRepository")
public interface CommuImageRepository extends JpaRepository<BdImage, Long>{

    List<BdImage> findAllByCommunityBdNo(Long BdNo);
}
