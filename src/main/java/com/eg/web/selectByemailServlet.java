package com.eg.web;

import com.eg.pojo.Tickect;
import com.eg.service.TickectService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectByemailServlet")
public class selectByemailServlet extends HttpServlet {
    private TickectService service = new TickectService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        List<Tickect> tickects = service.selectByemail(email);
        request.setAttribute("tickects",tickects);
        request.getRequestDispatcher("/result.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
