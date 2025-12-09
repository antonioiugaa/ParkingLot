package org.example.parkinglot; // O il tuo package corretto

import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.parkinglot.common.UserDto;
import org.example.parkinglot.ejb.UsersBean;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "Users", value = "/Users")
public class Users extends HttpServlet {

    @Inject
    UsersBean usersBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. Chiedi i dati al Bean
        List<UserDto> users = usersBean.findAllUsers();

        // 2. Mettili nella "busta" per la JSP
        request.setAttribute("users", users);

        // 3. Spedisci tutto alla pagina visuale
        request.getRequestDispatcher("/WEB-INF/pages/users.jsp").forward(request, response);
    }
}