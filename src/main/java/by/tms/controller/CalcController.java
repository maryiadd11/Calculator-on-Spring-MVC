package by.tms.controller;

import by.tms.entity.Operation;
import by.tms.services.CalcService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;


@Controller
@RequestMapping(path = "/home")
public class CalcController {

//    @Autowired
//    private CalcService calcService;
    private final CalcService calcService;

    public CalcController(CalcService calcService) {
        this.calcService = calcService;
    }

    @GetMapping(path = "/calc")
    public ModelAndView getPage(ModelAndView modelAndView){
        modelAndView.addObject("operation", new Operation());
        modelAndView.setViewName("calc");
        return modelAndView;
    }

    @PostMapping(path = "/calc")
    public ModelAndView calc(@Valid Operation operation, BindingResult bindingResult, ModelAndView modelAndView){
        if (bindingResult.hasErrors()){
            modelAndView.setViewName("calc");
        } else {
            calcService.calc(operation);
            modelAndView.addObject("result", "Результат = " + operation.getResult());
            modelAndView.setViewName("calc");
        }
        return modelAndView;
    }

}
