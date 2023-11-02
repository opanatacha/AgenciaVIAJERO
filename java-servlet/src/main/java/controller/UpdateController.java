package controller;

import dao.UsuarioDAO;
import database.DatabaseConnection;
import model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.time.LocalDate;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    static Connection connection = DatabaseConnection.createConnection();

    static UsuarioDAO usuarioDAO = new UsuarioDAO(connection);

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        try {
            Usuario usuario = usuarioDAO.consultarUsuario(id);

            req.setAttribute("usuario", usuario);
            RequestDispatcher rd = req.getRequestDispatcher("atualizar.jsp");
            rd.forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        try {
            Usuario usuario = new Usuario();
            usuario.setNome(req.getParameter("nome"));
            usuario.setCpf(req.getParameter("cpf"));
            usuario.setDataNascimento(LocalDate.parse(req.getParameter("dataNascimento")));
            usuario.setTelefone(req.getParameter("telefone"));
            usuario.setEmail(req.getParameter("email"));
            usuario.setSenha(req.getParameter("senha"));
            usuario.setId(usuarioDAO.consultarIdUsuario(usuario.getCpf()));

            UsuarioDAO usuarioDAO = new UsuarioDAO(connection);
            usuarioDAO.atualizarUsuario(usuario);

            res.sendRedirect("ReadController?id=" + usuario.getId());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
