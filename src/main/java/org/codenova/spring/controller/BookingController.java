package org.codenova.spring.controller;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.codenova.spring.model.TableBooking;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.UUID;

@Controller
@RequestMapping("/booking")
public class BookingController {

    @RequestMapping("/form")
    public String bookingForHandle(){
        return "booking/form";
    }
    /*
      자동으로 addAttribute 될때 클래스명으로 등록이 되는데 (앞글자만 소문자로 변경되서)
      @Valid 를 쓸때는 그 다음 인자를 반드시 BindingResult 로 설정해야됨
     */

    @RequestMapping("/proceed")
    public String bookingProceedHandle(@ModelAttribute @Valid TableBooking booking, BindingResult result,
                                       Model model, HttpSession session){

        System.out.println("booking proceed handle");
        System.out.println("booking:" +booking);
        System.out.println("error =" + result.hasErrors());



        if(!result.hasErrors()){
            return "booking/proceed";
        }else{

            FieldError customerNameError = result.getFieldError("customerName");
            System.out.println("customerNameError = " + customerNameError);
            model.addAttribute("customerNameError", result.getFieldError("customerName"));

            int guestErrorCount = result.getFieldErrorCount("guests");
            System.out.println("guestErrorCount =" + guestErrorCount);
            model.addAttribute("guestErrorCount", result.getFieldErrorCount("guests"));


            return "booking/proceed-error";
        }
    }
}
