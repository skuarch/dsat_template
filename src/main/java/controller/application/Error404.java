package controller.application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class Error404 {
    
    private static final ModelAndView MAV = new ModelAndView("application/error404");
    
    @RequestMapping(value = {"/error404"})
    public ModelAndView error404(){
        return MAV;
    }
    
}
