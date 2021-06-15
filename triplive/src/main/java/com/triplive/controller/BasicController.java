package com.triplive.controller;

import java.util.HashMap;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.log4j.Log4j2;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
@Log4j2
public class BasicController {
    @RequestMapping(value= {"/", "index.do"})
    public String index() {
        log.info("main page 요청");
        return "main/index";
    }

    // SMS 전송 컨트롤러
    @RequestMapping("sendSMS.do")
    public void sendSms() {
        log.info("send SMS 요청");

        String api_key = "NCSEPIXLYNJU6GTI";
        String api_secret = "WH99BFWKMP4L47NFVXESW6KQE2YEJKRS";
        Message coolsms = new Message(api_key, api_secret);

        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", "01054342801");    // 등록된 발송 번호 (변경 x)
        params.put("from", "01066911611");  // 전송 대상 번호
        params.put("type", "SMS");          // 문자 타입 (변경 x)
        params.put("text", "TripLive에서 보낸 테스트 문자입니다."); // 문자 내용
        params.put("app_version", "test app 1.2");  // 앱 버전 (변경 x)

        try {
            JSONObject obj = (JSONObject) coolsms.send(params);
            System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getCode());
        }
    }
}