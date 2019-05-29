package ru.itpark.app.controllers;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itpark.app.models.User;
import ru.itpark.app.security.UserDetailsImpl;

@Controller
@RequestMapping("/about_company")
public class AboutCompanyController {
    @GetMapping
    @PreAuthorize("permitAll()")
    public String getAboutCompanyPage(Authentication authentication, ModelMap model) {
            Boolean isAuthorized;

            if (authentication != null ) {
                isAuthorized = true;
                UserDetailsImpl userDetails = (UserDetailsImpl)authentication.getPrincipal();
                User user = userDetails.getUser();
                model.addAttribute("user", user);
                model.addAttribute("isAuthorized", isAuthorized);

                return "about_company";
            } else { isAuthorized = false;
                model.addAttribute("isAuthorized", isAuthorized);
                return "about_company";}

        }
    }
