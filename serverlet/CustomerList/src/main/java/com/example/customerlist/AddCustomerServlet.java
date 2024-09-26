package com.example.customerlist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="AddCustomerServlet", urlPatterns = "/")
public class AddCustomerServlet extends HttpServlet {
    protected void doPost (HttpServletRequest request,
                           HttpServletResponse response)
                            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String birth = request.getParameter("birth");
        String address = request.getParameter("address");
        String image = request.getParameter("image");


        Customer customer = new Customer(name, birth, address, image);

        List<Customer> customerList = (List<Customer>) getServletContext().getAttribute("customerList");
        if(customerList == null) {
            customerList = new ArrayList<>();
            getServletContext().setAttribute("customerList", customerList);
        }
        customerList.add(customer);

        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
}
