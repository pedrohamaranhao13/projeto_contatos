package br.com.smarttec.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.smarttec.entites.Usuario;
import br.com.smarttec.repositories.UsuarioRepository;

@Controller
public class LoginController {

	@RequestMapping(value = "/") 
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView("login");
		return modelAndView;
	}

	@RequestMapping(value = "/autenticar-usuario", method = RequestMethod.POST)
	public ModelAndView autenticarUsuario(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView("login");

		try {

			String email = request.getParameter("email");
			String senha = request.getParameter("senha");

			UsuarioRepository usuarioRepository = new UsuarioRepository();
			Usuario usuario = usuarioRepository.findByEmailAndSenha(email, senha);

			if (usuario != null) {
				
				request.getSession().setAttribute("usuario", usuario);
				
				modelAndView.setViewName("redirect:/admin/home");
			} else {
				modelAndView.addObject("mensagem_erro", "Acesso negado! Usuário não encontrado.");
			}

		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Erro ao tentar autenticar: " + e.getMessage());
		}
		return modelAndView;
	}

}
