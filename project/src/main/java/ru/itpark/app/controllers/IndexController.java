package ru.itpark.app.controllers;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itpark.app.models.User;
import ru.itpark.app.security.UserDetailsImpl;

@Controller
@RequestMapping("/index")
public class IndexController {

    @GetMapping
    @PreAuthorize("permitAll()")
    public String getIndexPage(Authentication authentication, ModelMap model) {
        Boolean isAuthorized;

        if (authentication != null ) {
            isAuthorized = true;
            UserDetailsImpl userDetails = (UserDetailsImpl)authentication.getPrincipal();
            User user = userDetails.getUser();
            model.addAttribute("user", user);
            model.addAttribute("isAuthorized", isAuthorized);

            return "index";
        } else { isAuthorized = false;
            model.addAttribute("isAuthorized", isAuthorized);
            return "index";}

    }
}