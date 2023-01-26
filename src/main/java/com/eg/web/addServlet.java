package com.eg.web;

import com.eg.pojo.Tickect;
import com.eg.service.TickectService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
    private TickectService service = new TickectService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String floorUnit = request.getParameter("floorUnit");
        String category = request.getParameter("Category");
        String date = request.getParameter("date");
        String description = request.getParameter("description");

        Tickect tickect = new Tickect();
        tickect.setFirstName(firstName);
        tickect.setLastName(lastName);
        tickect.setEmail(email);
        tickect.setPhone(phone);
        tickect.setCategory(category);
        tickect.setFloorUnit(floorUnit);
        tickect.setDate(date);
        tickect.setDescription(description);

        service.add(tickect);

        request.setAttribute("add_msg","submit successful");

        request.getRequestDispatcher("/request.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
