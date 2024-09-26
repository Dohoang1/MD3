package com.example.javawebcurrencyconverter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

@WebServlet(name="ConverterServlet" , value= "/convert")
public class ConverterServlet extends HttpServlet {
    @Override
    protected void doGet (HttpServletRequest request,
                          HttpServletResponse response)
                            throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd = Float.parseFloat(request.getParameter("usd"));

        float vnd = rate* usd;

        DecimalFormat decimalFormat = new DecimalFormat("#,###");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Rate: " + decimalFormat.format(rate) + "</h1>");
        writer.println("<h2>USD: " + decimalFormat.format(usd) + "</h2>");
        writer.println("<h2>VND: " + decimalFormat.format(vnd) + "</h2>");
        writer.println("</html>");
    }
}
