package anna.diary.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class HelloController {
    

    @RequestMapping("intro")
    public String form() throws Exception {
    	return "hello/intro";
    }
}