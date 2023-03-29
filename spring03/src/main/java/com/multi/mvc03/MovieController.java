package com.multi.mvc03;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

	@RequestMapping("movie")
	public String moive(String movie) {
		System.out.println("브라우저로부터 전달받은 값은 " + movie);
		if(movie.equals("드라마")) {
			return "drama";
		}else if(movie.equals("코미디")){
			return "comic";
		}else {
			return "action";
		}
	}
	
	
}
