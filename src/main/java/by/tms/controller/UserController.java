//package by.tms.controller;
//
//import by.tms.entity.User;
//import by.tms.services.UserService;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//
//@Controller
//@RequestMapping(path = "/home")
//public class UserController {
//
//    private UserService userService;
//
//    public UserController(UserService userService) {
//        this.userService = userService;
//    }
//
//    @GetMapping(path = "/users")
//    public ModelAndView showAll(ModelAndView modelAndView){
//        modelAndView.addObject("userList", userService.showAll());
//        modelAndView.setViewName("UserAccount");
//        return modelAndView;
//    }
//
//    @PostMapping(path = "/users")
//    public ModelAndView deleteUser(ModelAndView modelAndView, User user){
//        System.out.println("Удаление вот этого" + user);
//        userService.removeUser(user.getId());
//        modelAndView.setViewName("redirect:/home/index");
//        return modelAndView;
//    }
//}
