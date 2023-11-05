package br.com.smarttec.entites;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Usuario {
	
	private  Integer idUsuario;
	private String nome;
	private String email;
	private String senha;
	private List<Contato> contatos;
}
