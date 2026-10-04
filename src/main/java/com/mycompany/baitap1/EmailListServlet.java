package com.mycompany.baitap1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EmailListServlet", urlPatterns = {"/emailList"})
public class EmailListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Trang 1: form nhập (cũng là đích của nút Return)
        request.getRequestDispatcher("/join.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if ("return".equals(action)) {
            response.sendRedirect(request.getContextPath() + "/emailList");
            return;
        }
        request.setAttribute("email", escape(request.getParameter("email")));
        request.setAttribute("firstName", escape(request.getParameter("firstName")));
        request.setAttribute("lastName", escape(request.getParameter("lastName")));
        // Trang 2: hiển thị thông tin
        request.getRequestDispatcher("/thanks.jsp").forward(request, response);
    }

    private static String escape(String s) {
        if (s == null) {
            return "";
        }
        return s.replace("&", "&amp;").replace("<", "&lt;")
                .replace(">", "&gt;").replace("\"", "&quot;");
    }
}

