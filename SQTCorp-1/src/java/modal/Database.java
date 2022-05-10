
package modal;

import java.sql.*;
import java.util.ArrayList;

public class Database {
    public static String urlString = "jdbc:mysql://localhost:3306/watchshop?zeroDateTimeBehavior=CONVERT_TO_NULL";
    public static String username = "root";
    public static String password = "123456";
    
    private static boolean exist(String code) {
        ArrayList<Product> list = new ArrayList<>();
        for(int i=0; i<list.size(); i++) {
            if(list.get(i).getCode().equals(code)) return false;
        }
        return true;
    }
    
    public static ArrayList<Product> getProduct(String s) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(urlString, username, password);
            
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(s);
            while(rs.next()){
                String code = rs.getString("Code");
                String name = rs.getString("Name");
                String image= rs.getString("Image");
                float price = rs.getFloat("Price");
                String brand= rs.getString("Brand");
                String sex= rs.getString("Sex");
                String dial= rs.getString("Dial");
                String type= rs.getString("Type");
                float diameter = rs.getFloat("Diameter");
                String shape= rs.getString("Shape");
                String stuff= rs.getString("Stuff");
                String source= rs.getString("Source");
                String description = rs.getString("Description");
                if(exist(code))
                list.add(new Product(code, name, image, price, brand, sex, dial, type, diameter, shape, stuff, source, description));
            }
            conn.close();
            return list;
        } catch (Exception e) {
            System.out.println("Khong ket noi duoc csdl");
            return null;
        }
    }
    
    public static ArrayList<Product> getMiniProduct(String s) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(urlString, username, password);
            
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(s);
            while(rs.next()){
                String code = rs.getString("Code");
                String name = rs.getString("Name");
                String image= rs.getString("Image");
                float price = rs.getFloat("Price");
                if(exist(code))
                list.add(new Product(code, name, image, price));
            }
            conn.close();
            return list;
        } catch (Exception e) {
            System.out.println("Khong ket noi duoc csdl");
            return null;
        }
    }
    
    public static ArrayList<User> getMiniUser(String s) {
        ArrayList<User> list = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(urlString, username, password);
            
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(s);
            while(rs.next()){
                String userName = rs.getString("userName");
                String password = rs.getString("password");
                String name= rs.getString("name");
                String role = rs.getString("role");
                list.add(new User(userName, password, name, role));
            }
            conn.close();
            return list;
        } catch (Exception e) {
            System.out.println("Khong ket noi duoc csdl");
            return null;
        }
    }
    
    public static void addProduct(Product product) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(urlString, username, password);
            
            Statement statement = conn.createStatement();
            boolean check = statement.execute("Insert into product values('" + product.getCode() + "','" + product.getDescription() + "'," + product.getPrice() + ")");
            if(check) {
                System.out.println("Suscess!");
            }
            else System.out.println("Unsuscess!");
            conn.close();
        } catch (Exception e) {
            System.out.println("Khong ket noi duoc csdl");
        }
    }
    
    public static void delProduct(String productCode) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(urlString, username, password);
            
            Statement statement = conn.createStatement();
            boolean check = statement.execute("delete from product where code='" + productCode + "'");
            if(check) {
                System.out.println("Suscess!");
            }
            else System.out.println("Unsuscess!");
            conn.close();
        } catch (Exception e) {
            System.out.println("Khong ket noi duoc csdl");
        }
    }
    
}
