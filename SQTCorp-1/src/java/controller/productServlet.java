///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//package controller;
//
//import java.io.IOException;
//import javax.servlet.ServletContext;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;
//
///**
// *
// * @author TheBoos
// */
//@WebServlet(name = "productServlet", urlPatterns = {"/productServlet"})
//public class productServlet extends HttpServlet {
//
//    @Override
//    protected void doPost(HttpServletRequest request,
//            HttpServletResponse response)
//            throws ServletException, IOException {
//        
//        String url = "/view/home.jsp";
//        ServletContext sc = getServletContext();
//        
//        // get current action
//        String action = request.getParameter("action");
//
//        if (action == null) {
//            action = "join";  // default action
//        }
//        
//        if(action.equals("join")){
//            url="/addItem.jsp";
//        }
//
//        // perform action and set URL to appropriate page
//        
//        else if (action.equals("add")) {
//        String code = request.getParameter("code");
//        String des = request.getParameter("description");
//        String price = request.getParameter("price");
//        if(price!=null){
//               Product product = new Product(code, des, Double.parseDouble(price));
//               Database.addProduct(product);
//               url="/index.jsp";
//        }
////        Database.addProduct(code, action, Double.parseDouble(price));
//        }
//        getServletContext().getRequestDispatcher(url)
//                .forward(request, response);
//    }
//
//}
