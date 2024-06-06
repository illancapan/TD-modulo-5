package controlador;

import modelo.Usuario;
import util.ConexionBD;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/usuario")
public class UsuarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Usuario> usuarios = obtenerUsuarios();
        request.setAttribute("usuarios", usuarios);
        request.getRequestDispatcher("usuarios.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Este método podría ser utilizado para insertar nuevos usuarios en la base de datos, si es necesario.
    }

    private List<Usuario> obtenerUsuarios() {
        List<Usuario> usuarios = new ArrayList<>();
        try (Connection connection = ConexionBD.getConnection();
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM Usuario");
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Usuario usuario = new Usuario(
                        resultSet.getInt("id"),
                        resultSet.getString("nombre"),
                        resultSet.getString("correo_electronico"),
                        resultSet.getInt("saldo")
                );
                usuarios.add(usuario);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuarios;
    }
}
