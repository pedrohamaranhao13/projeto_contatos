package br.com.smarttec.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.smarttec.entites.Usuario;
import br.com.smarttec.repositories.UsuarioRepository;

@Controller
public class RegisterController {

	@RequestMapping(value = "criar-conta")
	public ModelAndView register() {
		ModelAndView modelAndView = new ModelAndView("register");
		return modelAndView;
	}
	
	@RequestMapping(value = "/criar-usuario", method = RequestMethod.POST)
	public ModelAndView criarUsuario(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("register");
		
		try {
			
			Usuario usuario = new Usuario();
			
			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));
			
			UsuarioRepository usuarioRepository = new UsuarioRepository();
			
			if (usuarioRepository.findByEmail(usuario.getEmail()) != null) {
				modelAndView.addObject("mensagem_erro", "O e-mail informado j� est� cadastrado, tente outro.");
			} else {
				usuarioRepository.create(usuario);
				modelAndView.addObject("mensagem_sucesso", "Parab�ns, sua conta de usu�rio foi criada com sucesso!");
			}
		
					
		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao criar conta: " + e.getMessage());
			
		}
		
		return modelAndView;
	}
	
}
