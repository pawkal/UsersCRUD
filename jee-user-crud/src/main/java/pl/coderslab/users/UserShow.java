package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/show")
public class UserShow extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Pobranie ID użytkownika z parametru żądania
        String userIdParam = request.getParameter("id");
        if (userIdParam == null || userIdParam.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/users/show.jsp");
            return;
        }

        // Konwersja ID na liczbę
        int userId = Integer.parseInt(userIdParam);

        UserDao userDao = new UserDao();
        User user = userDao.findById(userId);

        // Przekazanie obiektu użytkownika do widoku
        request.setAttribute("user", user);

        // Przekierowanie do widoku szczegółów użytkownika (show.jsp)
        getServletContext().getRequestDispatcher("/users/show.jsp").forward(request, response);
    }
}
