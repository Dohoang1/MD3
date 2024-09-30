package controller;

import dao.UserDAO;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = "/users")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertUser(request, response);
                    break;
                case "edit":
                    updateUser(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteUser(request, response);
                    break;
                default:
                    listUsers(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        List<User> listUser;

        String typeSearch = request.getParameter("searchtype");
        String keyword = request.getParameter("keyword");
        String sortBy = request.getParameter("sortby");
        String order = request.getParameter("order");

        listUser = userDAO.selectAllUsers();

        if (typeSearch != null && keyword != null && !keyword.isEmpty()) {
            listUser = searchUsers(typeSearch, keyword);
        }

        if (sortBy != null && order != null) {
            listUser = sortUsers(sortBy, order);
        }

        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("users/list.jsp");
        dispatcher.forward(request, response);
    }

    private List<User> searchUsers(String typeSearch, String keyword) throws SQLException {
        switch (typeSearch) {
            case "Name":
                return userDAO.searchUsersByName(keyword);
            case "ID":
                return userDAO.searchUsersById(keyword);
            case "Country":
                return userDAO.searchUsersByCountry(keyword);
            default:
                return userDAO.selectAllUsers();
        }
    }

    private List<User> sortUsers(String sortBy, String order) throws SQLException {
        switch (sortBy) {
            case "ID":
                return userDAO.sortUserById(order);
            case "Name":
                return userDAO.sortUserByName(order);
            case "Country":
                return userDAO.sortUserByCountry(order);
            default:
                return userDAO.selectAllUsers();
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("users/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        User existingUser = userDAO.selectUser(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("users/edit.jsp");
        dispatcher.forward(request, response);
    }


    private void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User newUser = new User(name, email, country);
        userDAO.insertUser(newUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("users/create.jsp");
        dispatcher.forward(request, response);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User updatedUser = new User(id, name, email, country);
        userDAO.updateUser(updatedUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("users/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        userDAO.deleteUser(id);
        List<User> listUser = userDAO.selectAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("users/list.jsp");
        dispatcher.forward(request, response);
    }
}