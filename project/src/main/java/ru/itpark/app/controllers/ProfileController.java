package ru.itpark.app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itpark.app.models.Basket;
import ru.itpark.app.models.Product;
import ru.itpark.app.models.User;
import ru.itpark.app.repositories.UsersRepository;
import ru.itpark.app.security.UserDetailsImpl;
import ru.itpark.app.services.BasketService;
import ru.itpark.app.services.UsersService;

import java.util.List;

@Controller
@RequestMapping("/profile")
public class ProfileController {
    @Autowired
    private UsersService usersService;
    @Autowired
    private UsersRepository usersRepository;
    @GetMapping
    @PreAuthorize("isAuthenticated()")
    public String getProfilePage(Authentication authentication, ModelMap model) {
        UserDetailsImpl userDetails = (UserDetailsImpl)authentication.getPrincipal();
        User user = userDetails.getUser();
        model.addAttribute("user", user);

        return "profile";
    }
    @PostMapping
    @PreAuthorize("hasAuthority('USER')")
    public String add(User user) {
        usersService.add(user);
        return "redirect:/profile";
    }

}