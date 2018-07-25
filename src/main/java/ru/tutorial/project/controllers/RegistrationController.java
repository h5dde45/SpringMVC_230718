package ru.tutorial.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import ru.tutorial.project.domain.User;
import ru.tutorial.project.service.UserService;

@Controller
public class RegistrationController {
    @Autowired
    private UserService userService;

    @GetMapping(value = "registration")
    public String registration(){
        return "registration";
    }

    @PostMapping( "registration")
    public String addUser(User user, Model model){

        if(!userService.addUser(user)) {
            model.addAttribute("message","User exists...");
            return "registration";
        }

        return "redirect:/login";
    }

    @GetMapping("activate/{code}")
    public String activate(@PathVariable String code, Model model){

        boolean isActivate=userService.activateUser(code);

        if(isActivate){
            model.addAttribute("message","The user is successfully activated");
        }else{
            model.addAttribute("message","Activation code not found..");
        }

        return "login";
    }
}
