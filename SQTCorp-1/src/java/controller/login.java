/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.Database;
import modal.User;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {
    @Override
        protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = "/Login.jsp";
        
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        
        ArrayList<User> list = Database.getMiniUser("Select * from user");
        for (User user1 : list) {
            if(user1.getUserName().equalsIgnoreCase(user) == true && user1.getPassword().equals(pass) == true) {
                if(user1.getRole().equals("buyer")) {
                    url="/homeBuyer.jsp";
                    break;
                }
                if(user1.getRole().equals("seller")) {
                    url="/homeSeller.jsp";
                    break;
                }
            }
            else {
                request.setAttribute("errorLogin", false);
                url="/Login.jsp";
            }
        }
               
        request.getRequestDispatcher(url).forward(request, response);
        }
    }
