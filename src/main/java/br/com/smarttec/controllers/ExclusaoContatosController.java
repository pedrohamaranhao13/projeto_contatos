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
public class ExclusaoContatosController {
	
	@RequestMapping(value = "/admin/exclusao-contatos")
	public ModelAndView exclusaoContatos(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("admin/consulta-contatos");
		
		try {
			
			Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
			
			Integer idContato = Integer.parseInt(request.getParameter("id"));
			
			ContatoRepository contatoRepository = new ContatoRepository();
			Contato contato  = contatoRepository.findById(idContato);
					
			if (contato != null && contato.getIdUsuario() == usuario.getIdUsuario()) {
				contatoRepository.delete(contato);
				modelAndView.addObject("mensagem_sucesso", "Contato excluído com sucesso!");
			}
			
			List<Contato> contatos = contatoRepository.findByUsuario(usuario.getIdUsuario());
			modelAndView.addObject("contatos", contatos);
			
		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao excluir contato: " + e.getMessage());
		}
		
		return modelAndView;
	}

}
