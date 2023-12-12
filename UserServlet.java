package sm.servlets;

import sm.models.User;
import sm.repository.UsersRepository;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/all")

public class UserServlet extends HttpServlet {
    private UsersRepository usersRepository;

    @Override
    public void init(ServletConfig config) throws ServletException {
        usersRepository = (UsersRepository) config.getServletContext().getAttribute("usersRep");
    }

    protected void doGet(HttpServletRequest request , HttpServletResponse response)throws ServletException , IOException{
        List<User> users= usersRepository.findAll();
        request.setAttribute("users", users);
        System.out.println(users);
        request.getRequestDispatcher("jsp/viewAll.jsp");
    }
}
