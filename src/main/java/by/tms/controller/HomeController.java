package by.tms.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping (path = "/home")
public class HomeController {

    @GetMapping
    public String hello(Model model) {
        model.addAttribute("message", "Hello, World");
        return "home";
    }

    @GetMapping (path = "/name/{name}/{age}")
    public String hello2(@PathVariable("name") String name, @PathVariable("age") int age, Model model) {
        model.addAttribute("message", "Hello, " + name + ", age " + age);
        return "home";
    }


    
    @GetMapping (path = "/calc")
    public String getPage (Model model) {
        model.addAttribute("message");
        return "home";
    }

    @PostMapping (path = "/calc")
    public String calc (@RequestParam double num1, @RequestParam double num2, @RequestParam String type, Model model) {
        switch (type) {
            case "sum":
                model.addAttribute("message", num1 + num2);
                break;
            case "minus":
                model.addAttribute("message", num1 - num2);
                break;
            case "mult":
                model.addAttribute("message", num1 * num2);
                break;
            case "div":
                model.addAttribute("message", num1 / num2);
                break;
        }
        return "home";
    }

}
