package br.com.smarttec.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.smarttec.entites.Contato;
import br.com.smarttec.entites.Usuario;
import br.com.smarttec.repositories.ContatoRepository;

@Controller
public class ConsultaContatosController {

	@RequestMapping(value ="/admin/consulta-contatos")
	public ModelAndView consultaContatos(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("admin/consulta-contatos");
		
		try {
			
			Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
			
			ContatoRepository contatoRepository = new ContatoRepository();
			List<Contato> contatos = contatoRepository.findByUsuario(usuario.getIdUsuario());
			
			modelAndView.addObject("contatos", contatos);
			
			
			
		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao consultar contatos: "  + e.getMessage());
		}
		
		return modelAndView;
		
	}
}
