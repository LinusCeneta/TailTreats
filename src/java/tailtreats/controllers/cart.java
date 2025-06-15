/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tailtreats.controllers;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import tailtreats.dao.inventorydao;
import tailtreats.model.inventorymodel;

/**
 *
 * @author Eliseio
 */
public class cart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/cart/add" -> {
                    additem (request, response);
            }
            case "/cart/remove" -> {
                    removeitem (request, response);
            }
            default -> viewcart(request, response);
                    
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    private void viewcart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        inventorydao item = new inventorydao();
        ArrayList<inventorymodel> productList = item.getproductList();
        request.setAttribute("productList", productList);
        RequestDispatcher lg = getServletContext().getRequestDispatcher(
                "/userinventory.jsp");
        lg.forward(request, response);
    }
    private void additem (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productid = Integer.parseInt(request.getParameter("productid"));
        inventorydao product = new inventorydao();
        inventorymodel productDetails = product.getproductDetails(productid);
        if (productid <= 30){
          response.sendRedirect("/TailTreats/products");  
        }else{
          response.sendRedirect("/TailTreats/home");   
        }
        
    }
    private void removeitem (HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {
        int productid = Integer.parseInt(request.getParameter("productid"));
        inventorydao item = new inventorydao();
        inventorymodel product = new inventorymodel(productid);
        if (item.removeProduct(product) == true){
            JOptionPane.showMessageDialog(null, "Item removed from the cart!");
        }
        
        response.sendRedirect("/TailTreats/cart");
    }
}


