package org.codenova.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
    RequestMappingHandlerMapping 을 쓰게 되면 HttpRequestHandler 라는 interface 를 토대로 만들면 안됨
    POJO (Plain Old Java Object) 형태로 Handler 를 정의 내리면됨
 */

@Controller
public class IndexController {

    @RequestMapping({"/","/index"})
    public void indexHandler(){
        System.out.println("IndexHandler.index");
    }

    @RequestMapping("/help")
    public void helpHandler(){
        System.out.println("IndexHandler.help");
    }
}
