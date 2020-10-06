package com.spring.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("form")
	public String form() {
		
		return "form";
	}
	
	@RequestMapping("input1")
	public String input1(HttpServletRequest request, Model model) {	
		
		String title = request.getParameter("title");
		String singer = request.getParameter("singer");
		String price = request.getParameter("price");
		
		model.addAttribute("mtitle", title);
		
		return "music/result1";
	}
	
	@RequestMapping("input2")
	public String input2( @RequestParam("title") String title,
						  @RequestParam("singer") String singer,
						  @RequestParam("price") String price
						) {	//@RequestParam 콘솔창 , jsp
		
		System.out.println("title : " +title );
		System.out.println("singer : " +singer );
		System.out.println("price : " +price );
	
		return "music/result2";
	}
	
	@RequestMapping("input3")
	public String input3(MusicBean m) {	//command 객체만들기  MusicBean 
		
		System.out.println(m.getTitle());
		System.out.println(m.getSinger());
		System.out.println(m.getPrice());
		return "music/result3";
	}
	
	@RequestMapping("input4")
	public String input4(@ModelAttribute("mb") MusicBean m) {	//MusicBean => mb 별칭설정으로 출력
		
		return "music/result4";
	}
	
	
}
