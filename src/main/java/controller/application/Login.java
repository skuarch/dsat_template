package controller.application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class Login {

    public static final ModelAndView MAV = new ModelAndView("application/login");

    //==========================================================================
    @RequestMapping(value = {"/login", "/", "index.*"})
    public ModelAndView index() {     System.out.println("ebnto9");   
        return MAV;
    }

}
