package br.com.pizzaria.servlet;

import br.com.pizzaria.dao.PizzariaDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-pedido")
public class DeletePedidoServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String pedidoID = req.getParameter("id");

        new PizzariaDao().deletePedidoById(pedidoID);

        resp.sendRedirect("/find-all-pizzas");

    }

}
