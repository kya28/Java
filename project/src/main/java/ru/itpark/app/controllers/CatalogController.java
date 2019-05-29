package ru.itpark.app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import ru.itpark.app.forms.BasketForm;
import ru.itpark.app.models.Basket;
import ru.itpark.app.models.Product;
import ru.itpark.app.models.User;
import ru.itpark.app.security.UserDetailsImpl;
import ru.itpark.app.services.BasketService;
import ru.itpark.app.services.CatalogService;

import java.util.List;

@Controller
@RequestMapping("/catalog")
public class CatalogController {
    @Autowired
    private CatalogService catalogService;
    @Autowired
    private BasketService basketService;


    @GetMapping
    @PreAuthorize("permitAll()")
    public String getCatalogPage(@RequestParam(value = "sort", required = false) Boolean sort,
                               @RequestParam(value = "by", required = false) String by,
                               @RequestParam(value = "desc", required = false) Boolean desc,
                                 Authentication authentication,
                               ModelMap model) {
        List<Product> product = catalogService.getProducts(sort, by, desc);
        model.addAttribute("catalog", product);

        Boolean isAuthorized;
        if (authentication != null ) {
            isAuthorized = true;
            UserDetailsImpl userDetails = (UserDetailsImpl)authentication.getPrincipal();
            User user = userDetails.getUser();
            model.addAttribute("user", user);
            model.addAttribute("isAuthorized", isAuthorized = true);

        return "catalog";
    } else {
            model.addAttribute("isAuthorized", isAuthorized = false);
            return "catalog";}
    }
    @PostMapping
    @PreAuthorize("permitAll()")
    public String basket(BasketForm form) {
        basketService.basket(form);
        return "redirect:/catalog";
    }
}
