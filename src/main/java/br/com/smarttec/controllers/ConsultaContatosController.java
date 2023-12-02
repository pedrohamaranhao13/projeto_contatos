package br.com.smarttec.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ConsultaContatosController {

	@RequestMapping(value ="/admin/consulta-contatos")
	public ModelAndView consultaContatos() {
		
		ModelAndView modelAndView = new ModelAndView("admin/consulta-contatos");
		return modelAndView;
		
	}
}
