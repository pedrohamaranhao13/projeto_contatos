package br.com.smarttec.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.smarttec.entites.Usuario;
import br.com.smarttec.factories.ConnectionFactory;

public class UsuarioRepository {

	public void create(Usuario usuario) throws Exception {

		Connection connection = ConnectionFactory.getConnection();

		PreparedStatement statement = connection.prepareStatement("insert into usuario(nome, email, senha) values(?,?,md5(?))");
		statement.setString(1, usuario.getNome());
		statement.setString(2, usuario.getEmail());
		statement.setString(3, usuario.getSenha());
		statement.execute();

		connection.close();

	}

	public Usuario findByEmail(String email) throws Exception{
		
		Connection connection = ConnectionFactory.getConnection();
		
		PreparedStatement statement = connection.prepareStatement("select * from usuario where email = ?");
		statement.setString(1, email);
		
		ResultSet resultSet = statement.executeQuery();
		
		Usuario usuario = null;
		
		if(resultSet.next()) {
			
			usuario = new Usuario();
			
			usuario.setIdUsuario(resultSet.getInt("idusuario"));
			usuario.setNome(resultSet.getString("nome"));
			usuario.setEmail(resultSet.getString("email"));
			usuario.setSenha(resultSet.getString("senha"));
					
		}
		
		connection.close();
		return usuario;
	}
	
	
}
