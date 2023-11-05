package br.com.smarttec.entites;

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
public class Contato {

	private Integer idContato;
	private String nome;
	private String telefone;  
	private String email;
	private String observacoes;
	private Integer idUsuario;
	private Usuario usuario;
	
}
