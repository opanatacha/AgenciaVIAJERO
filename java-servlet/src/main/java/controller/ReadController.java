package controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDAO;
import database.DatabaseConnection;
import model.Usuario;

@WebServlet("/ReadController")

public class ReadController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    static Connection connection = DatabaseConnection.createConnection();

    static UsuarioDAO usuarioDAO = new UsuarioDAO(connection);

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        try {

            Usuario usuario = usuarioDAO.consultarUsuario(id);

            req.setAttribute("usuario", usuario);
            RequestDispatcher rd = req.getRequestDispatcher("perfil.jsp");
            rd.forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}