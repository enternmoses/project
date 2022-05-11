
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.Database;
import modal.Product;

@WebServlet(name = "alter", urlPatterns = {"/alter"})
public class alter extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String alter = req.getParameter("action");
        String url = null;
        if(alter.equals("del")) {
            String code = req.getParameter("productCode");
            Database.delProduct(code);
            url = "/homeSeller.jsp";
        }
        else if(alter.equals("add")) {
            url = "/alter.jsp";
        }
        else if(alter.equals("edit")) {
            String code = req.getParameter("productCode");
            String name = req.getParameter("name");
            String image = req.getParameter("image");
            String price = req.getParameter("price");
            String brand = req.getParameter("brand");
            String sex = req.getParameter("sex");
            
            Product p = new Product(code, name, image, Float.parseFloat(price), brand, sex);
            req.setAttribute("p", p);
            url = "/alter.jsp";
            
        }
        getServletContext().getRequestDispatcher(url).forward(req, resp);
    }
    
}
