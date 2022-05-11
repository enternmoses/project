/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.Database;
import modal.User;

public class login extends HttpServlet {
    @Override
        protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = "/Login.jsp";
        ServletContext sc = getServletContext();
        
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        
        ArrayList<User> list = Database.getMiniUser("Select * from user");
        for (User user1 : list) {
            if(user1.getUserName().equalsIgnoreCase(user) && user1.getPassword().equals(pass)) {
                if(user1.getRole().equals("buyer"))
                    url="/homeBuyer.jsp";
                if(user1.getRole().equals("seller")) 
                    url="/homeSeller.jsp";
            }
            else {
                request.setAttribute("errorLogin", false);
                url="/Login.jsp";
            }
        }
               
        request.getRequestDispatcher(url).forward(request, response);
        }
    }
