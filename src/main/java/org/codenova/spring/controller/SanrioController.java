package org.codenova.spring.controller;

import org.codenova.spring.model.Sanrio;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sanrio")

public class SanrioController {

    @RequestMapping("/form")
    public String studySanrioFormHandle(){

        return "sanrio/form";
    }
    @RequestMapping("/info")
    public String studySanrioInfoHandle(@ModelAttribute Sanrio sanrio, Model model){
        int bmi = sanrio.getWeight()/(sanrio.getHeight()* sanrio.getHeight());
        if (bmi>=30){
            model.addAttribute("bmi", "뚱뚱이임");
        } else {
            model.addAttribute("bmi", "뚱뚱이아님");
        }
        return "sanrio/info";
    }
}
