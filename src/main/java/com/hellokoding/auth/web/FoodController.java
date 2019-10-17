package com.hellokoding.auth.web;


import com.hellokoding.auth.model.*;
import com.hellokoding.auth.repository.FoodRepository;
import com.hellokoding.auth.repository.UserRepository;
import com.hellokoding.auth.service.ResearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Controller
public class FoodController {

    @Autowired
    private UserRepository userRepo;
    @Autowired
    private FoodRepository foodRepo;
    @Autowired
    private ResearchService reseachService;

    @GetMapping("/food")
    public String getFood(Map<String, User> model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User appUser = userRepo.findByUsername(auth.getName());
        model.put("user",appUser);
        return "food";
    }

    @PostMapping("/foodtest")
    public ModelAndView checkFood(@RequestParam String foodtest){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("result");
        boolean flag = true;
        Map<String,String> map = new HashMap<>();
        Food testedFood = foodRepo.findByProductName(foodtest);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User appUser = userRepo.findByUsername(auth.getName());
        if(testedFood == null)
           map.put("Product not found","error");
        else{
            boolean ok = true;
            Set<Alergie> userAlergies = appUser.getAlergies();
            for(Ingredient i:testedFood.getIngredients()){
                System.out.println(i.getName());
                for(Alergie alergie: i.getAlergies()){
                    System.out.println(i.getName());
                    for(Alergie alergieuser : userAlergies){
                        System.out.println(alergieuser.getName());
                        if(alergie.getName().equals(alergieuser.getName()))
                        {
                            ok = false;
                            flag = false;
                            break;
                        }
                    }

                    if(!ok){
                        break;
                    }


                }
                if(ok){
                    map.put(i.getName(), "ok");
                }
                else
                    map.put(i.getName(), "ko");
                ok = true;


            }
        }
        mv.getModel().put("data",map);
        if(testedFood!=null) {
            Research s = new Research();
            s.setDate(Date.from(new Date().toInstant()));
            s.setKeywords(foodtest);
            s.setUser(appUser);
            s.setProductType(testedFood.getProductType());
            s.setResult(flag ? "Clean product" : "Dangerous product");
            reseachService.save(s);
        }
        return mv;
    }
}
