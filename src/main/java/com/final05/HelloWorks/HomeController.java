package com.final05.HelloWorks;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.final05.HelloWorks.member.model.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("memberinfo")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Member ssMember = (Member)session.getAttribute("memberinfo");
	      if(ssMember == null) {
	         return "redirect:/login";
	      }else {
	    	  System.out.println("μΈμ μ€λ?"+ssMember);
	    	return "home";	
	      }
	
	}
	
}
