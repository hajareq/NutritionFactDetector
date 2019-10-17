package com.hellokoding.auth.web;

import com.hellokoding.auth.model.User;
import com.hellokoding.auth.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class ProfileController {

    @Autowired
    private UserRepository userRepo;

    @GetMapping("/profile")
    public ModelAndView getProfile(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("profile");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User appUser = userRepo.findByUsername(auth.getName());
        mv.getModelMap().put("user",appUser);
        return mv;
    }

}

