package org.codenova.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
    RequestMappingHandlerMapping 을 쓰게 되면 HttpRequestHandler 라는 interface 를 토대로 만들면 안됨
    POJO (Plain Old Java Object) 형태로 Handler 를 정의 내리면됨
 */

@Controller
public class IndexController {

    @RequestMapping({"/","/index"})
    public ModelAndView indexHandler(){
        System.out.println("IndexHandler.index");
        ModelAndView mov = new ModelAndView("index");
        mov.addObject("msg", "Hello World");

        return mov;
    }

    @RequestMapping("/help")
    public String helpHandler() {

        System.out.println("IndexHandler.help");
        return "help";
    }
}
