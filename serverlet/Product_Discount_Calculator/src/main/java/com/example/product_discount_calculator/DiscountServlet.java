package com.example.product_discount_calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/calculate")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        double listPrice = Double.parseDouble(request.getParameter("listPrice"));
        double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));

        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice - discountAmount;

        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();

        writer.println("<html><body>");
        writer.println("<h1>Discount Calculation Result</h1>");
        writer.println("<p>List Price: " + listPrice + "</p>");
        writer.println("<p>Discount Percent: " + discountPercent + "%</p>");
        writer.println("<p>Discount Amount: " + discountAmount + "</p>");
        writer.println("<p>Discount Price: " + discountPrice + "</p>");
        writer.println("</body></html>");
    }
}
