package br.com.smarttec.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request) {
		
		request.getSession().removeAttribute("usuario");
		
		ModelAndView modelAndView = new ModelAndView("login");
		return modelAndView;
	}
}
