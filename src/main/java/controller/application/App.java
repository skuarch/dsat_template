package controller.application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class App {

    public static final ModelAndView MAV = new ModelAndView("application/App");

    //==========================================================================
    @RequestMapping(value = {"/app"})
    public ModelAndView index() {        
        return MAV;
    }

}
