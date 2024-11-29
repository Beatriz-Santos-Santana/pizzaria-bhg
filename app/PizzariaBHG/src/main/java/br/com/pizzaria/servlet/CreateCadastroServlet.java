package br.com.pizzaria.servlet;

import br.com.pizzaria.dao.CadastroDao;
import br.com.pizzaria.dao.PizzariaDao;
import br.com.pizzaria.model.Cadastro;
import br.com.pizzaria.model.Pizzaria;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/contato")
public class CreateCadastroServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("contato.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String cadId = req.getParameter("id");
        String cadNome = req.getParameter("nome");
        String cadEmail = req.getParameter("email");
        String cadTelefone= req.getParameter("telefone");
        String cadCep = req.getParameter("cep");
        String cadBairro = req.getParameter("bairro");
        String cadRua = req.getParameter("rua");
        String cadNum = req.getParameter("num");


        CadastroDao cadastroDao = new CadastroDao();
        Cadastro cadastro = new Cadastro(cadId,cadNome, cadEmail, cadCep, cadBairro, cadRua, cadNum);


        cadastroDao.createCadastro(cadastro);

        System.out.println("success in insert contato!");

        req.getRequestDispatcher("contato.jsp").forward(req, resp);

    }

    }
