package org.codenova.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/join")
    public ModelAndView joinHandle() {
        System.out.println("UserController.joinHandle");

        ModelAndView mov = new ModelAndView();
        mov.setViewName("user/join");

        return mov;
    }

    @RequestMapping("/join/proceed")
    public String joinProceedHandle() {

        System.out.println("UserController.joinProceedHandle");
        //view 이름 리턴시킬때 redirect: 을 붙이면 sendRedirect 처리를 해줌
        return "redirect:/index";
    }



}
