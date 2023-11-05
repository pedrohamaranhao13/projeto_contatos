package br.com.smarttec.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;

import br.com.smarttec.entites.Usuario;
import br.com.smarttec.factories.ConnectionFactory;

public class UsuarioRepository {

	public void create(Usuario usuario) throws Exception {

		Connection connection = ConnectionFactory.getConnection();

		PreparedStatement statement = connection.prepareStatement("insert into usuario(nome, email, senha) values(?,?,?)");
		statement.setString(1, usuario.getNome());
		statement.setString(2, usuario.getEmail());
		statement.setString(3, usuario.getSenha());
		statement.execute();

		connection.close();

	}

}
