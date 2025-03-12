package org.codenova.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ArticleController {

    @RequestMapping("/article/{id}")
    public void viewHandle(){

        System.out.println("ArticleController");
    }
}
