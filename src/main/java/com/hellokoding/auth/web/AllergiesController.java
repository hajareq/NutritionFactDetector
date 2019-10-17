package com.hellokoding.auth.web;

import com.hellokoding.auth.model.Alergie;
import com.hellokoding.auth.model.User;
import com.hellokoding.auth.repository.AlergieRepository;
import com.hellokoding.auth.repository.UserRepository;
import com.hellokoding.auth.service.AllergiesService;
import com.hellokoding.auth.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class AllergiesController {
    @Autowired
    private UserRepository userRepo;
    @Autowired
    private AlergieRepository alerRepo;
    @Autowired
    private AllergiesService alerService;
    @Autowired
    private UserService userService;

    @GetMapping("/allergies")
    public ModelAndView getUserAllergies(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("allergies");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User appUser = userRepo.findByUsername(auth.getName());
        mv.getModelMap().put("user",appUser);
        List<Alergie> alergieList = alerRepo.findByUser(appUser);
        mv.getModelMap().put("user",appUser);
        mv.getModelMap().put("data",alergieList);
        return mv;
    }


    @PostMapping("/newallergie")
    public ModelAndView crudAllergies(@RequestParam String allergies){
        ModelAndView mv = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User appUser = userRepo.findByUsername(auth.getName());
        mv.setViewName("allergies");
        List<Alergie> alergieList = alerRepo.findByUser(appUser);
        mv.getModelMap().put("user",appUser);
        mv.getModelMap().put("data",alergieList);
        Alergie al = new Alergie();
        al.setName(allergies);
        al.setUser(appUser);
        alerService.save(al);

        appUser.getAlergies().add(al);
        userService.update(appUser);
        return getUserAllergies();
    }

    @PostMapping("/deleteAllergie")
    public ModelAndView removeAllergie(@RequestParam Long delete){
        Optional<Alergie> al = alerRepo.findById(delete);
        alerService.remove(al.get());
        return getUserAllergies();
    }



}
