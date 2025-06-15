/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tailtreats.controllers;

import java.io.IOException;
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
public class checkout extends HttpServlet {

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
            default -> checkout(request, response);
                    
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void checkout (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productid = Integer.parseInt(request.getParameter("productid"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        
        inventorydao checkout = new inventorydao();
        
        if (checkout.checkout(productid, quantity) == true){
            inventorymodel product = new inventorymodel(productid);
            checkout.removeProduct(product);
            response.sendRedirect("/TailTreats/cart");
        }else{
            JOptionPane.showMessageDialog(null, "Checkout Unsuccessful.");
            response.sendRedirect("/TailTreats/cart");
        }
        
        
    }

}
