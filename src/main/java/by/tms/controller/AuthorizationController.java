package by.tms.controller;

import by.tms.entity.User;
import by.tms.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(path = "/home")
public class AuthorizationController {

    private UserService userService;

    public AuthorizationController (UserService userService) {
        this.userService = userService;
    }

    @GetMapping(path = "/auth")
    public ModelAndView authorization(ModelAndView modelAndView){
        modelAndView.setViewName("auth");
        return modelAndView;
    }

    @PostMapping(path = "/auth")
    public ModelAndView addAuthorization(User user, ModelAndView modelAndView){
        if (userService.containsUserByLogin(user.getLogin()) && userService.containsUserByPassword(user.getPassword())) {
            modelAndView.setViewName("calc");
        }
        return modelAndView;
    }
}
