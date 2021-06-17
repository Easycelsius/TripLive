package com.triplive.service;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import com.triplive.entity.GetCountrySafetyList2;
import com.triplive.repository.SafetyListRepository;
import org.springframework.stereotype.Service;
import lombok.extern.log4j.Log4j2;

@Service("BasicService")
@Transactional
@Log4j2
public class BasicServiceImpl implements BasicService{

  @Autowired
	private SafetyListRepository safetyDAO;

  // html 태그 제거
  public Optional<GetCountrySafetyList2> removeTag(GetCountrySafetyList2 safety){
    String html = safety.toString();

    String tag = html.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");

    log.info("글 상세 조회 실행");
    return safetyDAO.findById(tag);
  }
  
}
