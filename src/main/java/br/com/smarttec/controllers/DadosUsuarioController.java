package br.com.smarttec.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.smarttec.entites.Usuario;
import br.com.smarttec.repositories.UsuarioRepository;

@Controller
public class DadosUsuarioController {

	@RequestMapping(value = "/admin/dados-usuario")
	public ModelAndView dadosUsuario() {
		
		ModelAndView modelAndView = new ModelAndView("admin/dados-usuario");
		
		return modelAndView;
	}
	
	@RequestMapping(value= "/admin/alterar-senha", method = RequestMethod.POST)
	public ModelAndView alterarSenha(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("admin/dados-usuario");
		
		try {
			
			Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
			
			usuario.setSenha(request.getParameter("novaSenha"));
			
			UsuarioRepository usuarioRepository = new UsuarioRepository();
			usuarioRepository.update(usuario);
			
			modelAndView.addObject("mensagem_sucesso", "Senha atualizada com sucesso");
			
		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Erro ao alterar senha:" + e.getMessage());
		}
		
		return modelAndView;
	}
}
