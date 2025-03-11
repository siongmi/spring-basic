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
    public void joinProceedHandle() {
        System.out.println("UserController.joinProceedHandle");
    }
}
