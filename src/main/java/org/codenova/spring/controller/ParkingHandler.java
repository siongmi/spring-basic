package org.codenova.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/parking")
public class ParkingHandler {

    @RequestMapping("/form")
    public String parkingForm(){

        return "parking/form";

        }
    @RequestMapping("/calculate")
    public String parkingCalculate(Model model, @RequestParam("num")String num, @RequestParam("time")int time,@RequestParam("purchase")int purchase){

        int chargeMinute = time;
        if(purchase>=100000){
            chargeMinute -= 5*60;
        } else if (purchase>=50000) {
            chargeMinute -= 4*60;

        } else if (purchase>=30000) {
            chargeMinute -= 3*60;

        }else chargeMinute -=30;

        int fee;
        if(chargeMinute <= 0){
            fee = 0;
        }else{
            fee = chargeMinute/ 10*1000;
        }

        model.addAttribute("fee",fee );

        return "parking/calculate";

    }


}
