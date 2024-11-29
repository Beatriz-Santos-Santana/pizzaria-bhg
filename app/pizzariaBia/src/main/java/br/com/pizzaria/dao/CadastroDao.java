package br.com.pizzaria.dao;

import br.com.pizzaria.model.Cadastro;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CadastroDao {


    public void createCadastro(Cadastro cadastro) {
        String SQL = "INSERT INTO CADASTRO (NOME, EMAIL, TELEFONE,CEP,BAIRRO,RUA,NUM) VALUES (?,?,?,?,?,?,?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, cadastro.getNome());
            preparedStatement.setString(2, cadastro.getEmail());
            preparedStatement.setString(3, cadastro.getTelefone());
            preparedStatement.setString(4, cadastro.getCep());
            preparedStatement.setString(5, cadastro.getBairro());
            preparedStatement.setString(6, cadastro.getRua());
            preparedStatement.setString(7, cadastro.getNum());

            preparedStatement.execute();

            connection.commit();

            System.out.println("success in insert cadastro");

            connection.close();

        } catch (Exception e) {

            e.printStackTrace();

            System.out.println("fail in database connection");

        }



    }




}
