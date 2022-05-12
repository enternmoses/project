/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.Database;
import modal.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String user_name = request.getParameter("user");
        String pass = request.getParameter("pass");
        String name = request.getParameter("name");
        String role = request.getParameter("role");
        
        Database.alterProduct("INSERT INTO user (userName, password, name, role) VALUES ('" +user_name + "','" + pass + "','" + name + "','" + role + "')");
         
        request.getRequestDispatcher("/Login.jsp").forward(request, response);
    }

}
