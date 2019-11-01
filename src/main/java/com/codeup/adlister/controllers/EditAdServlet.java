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

@WebServlet(name = "EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().edit(id);
        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        User user = (User) request.getSession().getAttribute("user");

        //create an ad object with those values
        Ad ad = new Ad (
                id,
                id,
                title,
                description,
                user.getUsername()
        );

        // Add an update(ad) method to your (UPDATE SET)
        DaoFactory.getAdsDao().update(ad);
        response.sendRedirect("/profile");
    }

}