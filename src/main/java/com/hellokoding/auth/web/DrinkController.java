package com.hellokoding.auth.web;

import com.hellokoding.auth.model.*;
import com.hellokoding.auth.repository.DrinkRepository;
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
public class DrinkController {

    @Autowired
    private UserRepository userRepo;
    @Autowired
    private DrinkRepository drinkRepo;
    @Autowired
    private ResearchService reseachService;

    @GetMapping("/drinks")
    public String getDrinks(Map<String, User> model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User appUser = userRepo.findByUsername(auth.getName());
        model.put("user",appUser);
        return "drink";
    }

    @PostMapping("/drinktest")
    public ModelAndView checkDrink(@RequestParam String drinktest){
        ModelAndView mv = new ModelAndView();
        boolean flag = true;
        mv.setViewName("result");
        Map<String,String> map = new HashMap<>();
        Drink drink = drinkRepo.findByName(drinktest);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User appUser = userRepo.findByUsername(auth.getName());
        if(drink == null)
            map.put("product not found","error");
        else{
            boolean ok = true;
            Set<Alergie> userAlergies = appUser.getAlergies();
            for(Ingredient i:drink.getIngredients()){
                System.out.println(i.getName());
                for(Alergie alergie: i.getAlergies()){
                    for(Alergie alergieuser : userAlergies){
                        System.out.println(alergieuser);
                        System.out.println(alergie);
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
        if(drink!=null) {
            Research s = new Research();
            s.setDate(Date.from(new Date().toInstant()));
            s.setKeywords(drinktest);
            s.setUser(appUser);
            s.setProductType(drinktest);
            s.setResult(flag ? "Clean product" : "Dangerous product");
            reseachService.save(s);
        }
        return mv;
    }


}
