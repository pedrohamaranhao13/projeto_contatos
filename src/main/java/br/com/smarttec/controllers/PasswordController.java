package br.com.smarttec.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PasswordController {

	@RequestMapping(value = "criar-conta")
	public ModelAndView register() {
		ModelAndView modelAndView = new ModelAndView("register");
		return modelAndView;
	}
	
}
