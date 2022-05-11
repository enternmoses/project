
package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.Database;
import modal.Product;

@WebServlet(name = "comfirmAlter", urlPatterns = {"/comfirmAlter"})
public class comfirmAlter extends HttpServlet {
    
    private static boolean exist(String code) {
        ArrayList<Product> list = Database.getMiniProduct("Select * from product");
        for(int i=0; i<list.size(); i++) {
            if(list.get(i).getCode().equals(code)) return false;
        }
        return true;
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = null;
        String code = req.getParameter("code");
        String name = req.getParameter("name");
        String image = req.getParameter("image");
        String priceString = req.getParameter("price");
        float price = Float.parseFloat(priceString);
        String brand = req.getParameter("brand");
        String sex = req.getParameter("sex");
        
        if(exist(code) == false) {
            Database.alterProduct("UPDATE product" + "SET Name =" + name + ", Image =" + image + ", Price =" + price + ", Brand =" + brand + ", Sex =" + sex + "WHERE Code =" + code);
            url = "/homeSeller.jsp";
        }
        
        else {
            Database.alterProduct("INSERT INTO product (Name, Image, Price, Brand, Sex) VALUES (" +name + "," + image + "," + price + "," + brand + "," + sex +")");
            url = "/homeSeller.jsp";
        }
        getServletContext().getRequestDispatcher(url).forward(req, resp);
    }

   

}
