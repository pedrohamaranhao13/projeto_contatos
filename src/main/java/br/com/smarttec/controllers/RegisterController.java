package br.com.smarttec.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {

	@RequestMapping(value = "/esqueci-minha-senha")
	public ModelAndView password() {
		ModelAndView modelAndView = new ModelAndView("password");
		return modelAndView;
	}
	
}
