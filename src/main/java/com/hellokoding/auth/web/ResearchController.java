package com.hellokoding.auth.web;


import com.hellokoding.auth.model.Research;
import com.hellokoding.auth.model.User;
import com.hellokoding.auth.repository.ResearchRepository;
import com.hellokoding.auth.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ResearchController {

    @Autowired
    private UserRepository userRepo;
    @Autowired
    private ResearchRepository researchRepo;

    @GetMapping("/researches")
    public ModelAndView getResearches(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("history");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User appUser = userRepo.findByUsername(auth.getName());
        List<Research> researchList = researchRepo.findByUser(appUser);
        mv.getModel().put("data",researchList);
        mv.getModelMap().put("user",appUser)
;        return mv;
    }
}
