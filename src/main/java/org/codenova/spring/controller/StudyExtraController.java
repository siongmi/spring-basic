package org.codenova.spring.controller;

import jakarta.validation.Valid;
import org.codenova.spring.model.TravelSchedule;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/study")
public class StudyExtraController {

    /*
        @ModelAttribute 로 데이터를 받을 때 Spring은 재밌는 기능(데이터 유효성 검사)을 쓰기 쉽게 해준다

        @Valid, @Validated   + BingResult 는 한세트
     */
    @RequestMapping("/eleven")
    public String oneHandle(@ModelAttribute @Valid TravelSchedule travelSchedule, BindingResult bindingResult){

        System.out.println("StudyExtraController.oneHandle");
        boolean r = bindingResult.hasErrors();
        System.out.println("hasErrors =" +r);

        return "study/eleven";
    }
}
