package com.example.calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String oprand1 = request.getParameter("operand1");
        String oprand2 = request.getParameter("operand2");
        String operator = request.getParameter("operator");

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            double operand1 = Double.parseDouble(oprand1);
            double operand2 = Double.parseDouble(oprand2);

            Calculator calculator = new Calculator();

            double result = calculator.calculate(operand1, operand2, operator);

            out.println("<html><body>");
            out.println("<h1>Kết quả: " + result + "</h1>");
            out.println("</body></html>");
        } catch (NumberFormatException e) {
            response.getWriter().println("<html><body>");
            response.getWriter().println("<h1>Lỗi: Vui lòng nhập số hợp lệ</h1>");
            response.getWriter().println("</body></html>");
        } catch (ArithmeticException e) {
            response.getWriter().println("<html><body>");
            response.getWriter().println("<h1>Lỗi: " + e.getMessage() + "</h1>");
            response.getWriter().println("</body></html>");
        } catch (UnsupportedOperationException e) {
            response.getWriter().println("<html><body>");
            response.getWriter().println("<h1>Lỗi: Phép toán không được hỗ trợ</h1>");
            response.getWriter().println("</body></html>");
        }
    }

}
