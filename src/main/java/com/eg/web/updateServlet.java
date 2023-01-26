package com.eg.web;

import com.eg.pojo.Tickect;
import com.eg.service.TickectService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
    private TickectService service = new TickectService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        Integer status = Integer.valueOf(request.getParameter("status"));
        Tickect tickect = new Tickect();
        tickect.setId(Integer.valueOf(id));
        tickect.setStatus(status);
        service.update(tickect);
        String contextPath = request.getContextPath();
        response.sendRedirect(contextPath+"/selectAllServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
