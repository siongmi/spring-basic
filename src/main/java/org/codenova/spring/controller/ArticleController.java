package org.codenova.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ArticleController {

    /*
      RequestMapping 애너테이션을 사용하면 특정 URL 패턴에 대해 컨트롤러의 메서드를 매핑할수 있다
     */
    @RequestMapping("/article/{id}")
    public void viewHandle(){

        System.out.println("ArticleController");
    }
}
