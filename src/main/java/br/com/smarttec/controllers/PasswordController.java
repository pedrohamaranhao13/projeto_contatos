package br.com.smarttec.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.github.javafaker.Faker;

import br.com.smarttec.entites.Usuario;
import br.com.smarttec.messages.EmailMessage;
import br.com.smarttec.repositories.UsuarioRepository;


@Controller
public class PasswordController {
	
	@RequestMapping(value = "/esqueci-minha-senha")
	public ModelAndView password() {
		ModelAndView modelAndView = new ModelAndView("password");
		return modelAndView;
	}
	
	@RequestMapping(value = "/recuperar-senha", method = RequestMethod.POST)
	public ModelAndView recuperarSenha(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("password");
		
		try {

			String email = request.getParameter("email");
	
			UsuarioRepository usuarioRepository = new UsuarioRepository();
			Usuario usuario = usuarioRepository.findByEmail(email);

			if(usuario != null) {

				Faker faker = new Faker();
				usuario.setSenha(faker.internet().password(8, 20, true, true, true));
				
				String assunto = "Recuperação de senha de acesso - Agenda de contatos";
				String mensagem = "Olá, " + usuario.getNome()
													+ "\nUma nova senha foi gerada com sucesso!"
													+ "\nAcesse o sistema usando a senha: " + usuario.getSenha()
													+ "\nDepois você poderá alterar está senha para outra de sua preferência."
													+ "\nAtenciosamente"
													+ "\nEquipe Agenda de Contatos";
				
				EmailMessage emailMessage = new EmailMessage();
				emailMessage.sendMessage(usuario.getEmail(), assunto, mensagem);
				
				usuarioRepository.update(usuario);
				 
				 modelAndView.addObject("mensagem_sucesso","Recuperação de senha realizada com sucesso.");
				
			} else {
				modelAndView.addObject("mensagem_erro","Usuario não encontrado.");
			}
			
		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao recuperar senha: " + e.getMessage());
		}
		
		return modelAndView;
	}
	
	
}
