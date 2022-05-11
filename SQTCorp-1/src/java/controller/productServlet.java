
package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.Database;
import modal.Product;

@WebServlet(name = "productServlet", urlPatterns = {"/productServlet"})
public class productServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String choice = req.getParameter("choice");
        
        ArrayList<Product> list = null;
        switch (choice) {
            case "male":
                list = Database.getMiniProduct("Select * from product where sex = 'Male'");
                break;
            case "female":
                list = Database.getMiniProduct("Select * from product where sex = 'Female'");
                break;
            case "brand":
                list = Database.getMiniProduct("Select * from product");
                break;
            case "OP":
                list = Database.getMiniProduct("Select * from product where brand='OLYM PIANUS' or brand='OGIVAL'");
                break;
            case "OlymPianus":
                list = Database.getMiniProduct("Select * from product where brand='OLYM PIANUS'");
                break;
            case "Ogival":
                list = Database.getMiniProduct("Select * from product where brand='OGIVAL'");
                break;
            case "Citizen":
                list = Database.getMiniProduct("Select * from product where brand='ORIENT' or brand='SEIKO'");
                break;
            case "Orient":
                list = Database.getMiniProduct("Select * from product where brand='ORIENT'");
                break;
            case "Seiko":
                list = Database.getMiniProduct("Select * from product where brand='SEIKO'");
                break;
            case "couple":
                list = Database.getMiniProduct("Select * from product where sex='Unisex'");
                break;
            case "accessory":
                list = Database.getMiniProduct("Select * from product where brand='accessory'");
                break;
            default:
                break;
        }
        req.setAttribute("list", list);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/choice.jsp");
        dispatcher.forward(req, resp);
    }
}
