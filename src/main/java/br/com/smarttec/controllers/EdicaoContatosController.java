package br.com.smarttec.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EdicaoContatosController {
	
	@RequestMapping(value = "/admin/edicao-contatos")
	public ModelAndView edicaoContatos() {
		
		ModelAndView modelAndView = new ModelAndView("admin/edicao-contatos");
		return modelAndView;
	}

}
