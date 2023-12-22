package br.com.smarttec.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.smarttec.entites.Contato;
import br.com.smarttec.entites.Usuario;
import br.com.smarttec.repositories.ContatoRepository;

@Controller
public class CadastroContatosController {

	@RequestMapping(value = "/admin/cadastro-contatos")
	public ModelAndView cadastroContatos() {
		
		ModelAndView modelAndView = new ModelAndView("admin/cadastro-contatos");
		return modelAndView;
	}
	
	@RequestMapping(value = "/admin/cadastrar-contato", method =  RequestMethod.POST)
	public ModelAndView cadastrarContato(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("admin/cadastro-contatos");
		
		try {
			
			Contato contato = new Contato();
			Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
			
			contato.setNome(request.getParameter("nome"));
			contato.setEmail(request.getParameter("email"));
			contato.setTelefone(request.getParameter("telefone"));
			contato.setObservacoes(request.getParameter("observacoes"));
			contato.setIdUsuario(usuario.getIdUsuario());
			
			ContatoRepository contatoRepository= new ContatoRepository();
			contatoRepository.create(contato);
			
			modelAndView.addObject("mensagem_sucesso", "Contato cadastrado com sucesso.");
			
		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao cadastrar o contato: " + e.getMessage() );
		}
		
		return modelAndView;
	}
	
}
