package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
                user.getId(),
                user.getId(),
                request.getParameter("title"),
                request.getParameter("description"),
                request.getParameter("username")
        );

        String title = "title";
        if(title.trim().isEmpty()){
            System.out.println("This field cannot be empty");
        }else {
            return;
        }

        String description = "description";
        if(description.trim().isEmpty()){
            System.out.println("This field cannot be empty");
        }else {
            return;
        }

        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");

    }


}
