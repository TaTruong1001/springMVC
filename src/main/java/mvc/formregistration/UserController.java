package mvc.formregistration;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    private static final String[] countries = {"Vietnam","United States","Germany"};
    @RequestMapping(value = "/register")
    public String showRegistrationForm(Model model){
        model.addAttribute("user", new User());
        model.addAttribute("genders", Gender.values());
        model.addAttribute("countries",countries);
        return "registration/userForm";
    }
    @RequestMapping(value = "/result")
    public String processUser(User user){
        //Handle user here (e.g. save to Db)
        return "registration/userResult";
    }
}
