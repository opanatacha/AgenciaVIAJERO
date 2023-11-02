package controller;

import dao.UsuarioDAO;
import database.DatabaseConnection;
import model.Usuario;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.time.LocalDate;


@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    static Connection connection = DatabaseConnection.createConnection();

    static UsuarioDAO usuarioDAO = new UsuarioDAO(connection);
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Usuario usuario = new Usuario();

        usuario.setNome(req.getParameter("nome"));
        usuario.setCpf(req.getParameter("cpf"));
        usuario.setDataNascimento(LocalDate.parse(req.getParameter("dataNascimento")));
        usuario.setTelefone(req.getParameter("telefone"));
        usuario.setEmail(req.getParameter("email"));
        usuario.setSenha(req.getParameter("senha"));

        try {

            usuarioDAO.criarUsuario(usuario);
            usuario.setId(usuarioDAO.consultarIdUsuario(usuario.getCpf()));

            res.sendRedirect("ReadController?id=" + usuario.getId());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}


