package org.codenova.spring.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.swing.*;

/*
   RequestMapping 이 적용된 메서드는 메서드의 매개변수(인자)와 반환 타입을 다양하게 설정할 수 있다는 뜻입니다

   매개변수 부분부터 살펴보자
 */
@Controller
@RequestMapping("/study")
public class StudyController {

    // HttpServletRequest, HttpServletResponse, HttpSession : servlet-api 에서 사용하던 객체를 직접제어하고자 할 때
    @RequestMapping("/one")
    public void studyOneHandle(HttpServletRequest req, HttpServletResponse resp, HttpSession session){
        HttpSession s = req.getSession();
        System.out.println(s == session);

    }
    // Model, MoleMap: 뷰로 넘길 데이터가 있을 때
    // : Spring 에서는 Model 또는 ModelMap 객체를 사용하여 데이터를 템블릿으로 전달할 수 있다
    @RequestMapping("/two")
    public String studyTwoHandle(Model model){
        System.out.println("StudyController.studyTwoHandle");
        model.addAttribute("msg", "Hello World");

        return "study/two";
    }
    //  @RequestParam: 특정 파라미터를 바로 추출하고자 할 때
    @RequestMapping("/three")
    public void studyThreeHandle(@RequestParam("code") String code, @RequestParam("size") int size){
        System.out.println("StudyController.studyThreeHandle");
        System.out.println("code =" +code);
        System.out.println("size =" +size);

    }

}
