package controller.application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author skuarch
 */
@Controller
public class TestController {
    
    private static int counter = 0;

    //==========================================================================
    @RequestMapping(value = {"/testController"})
    public @ResponseBody String testController() {

        try {

            counter++;
            Thread.sleep(1000);
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "{\"dataBarChart\": [10, 8, "+counter+"]}";
    }
    
}
