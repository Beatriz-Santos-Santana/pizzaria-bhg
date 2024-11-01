package br.com.pizzaria.servlet;

import br.com.pizzaria.dao.PizzariaDao;
import br.com.pizzaria.model.Pizzaria;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/find-all-pizzas")
public class ListPizzariaServlet  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Pizzaria> pedidos = new PizzariaDao().findAllPedidos();

        req.setAttribute("pedido", pedidos);

        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);

    }



}
