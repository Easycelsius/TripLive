package com.triplive.service;
import java.util.List;
import java.util.Optional;
import com.triplive.entity.GetCountrySafetyList2;

public interface BasicService {
  
  // html 태그 제거
  Optional<GetCountrySafetyList2> removeTag(GetCountrySafetyList2 safety);

}
