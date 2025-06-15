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
public class inventory extends HttpServlet {

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
            case "/inventory/form" -> {
                    addInventory (request, response);
            }
            case "/inventory/form/submit" -> {
                    addItem (request, response);
            }
            case "/inventory/form/edit" -> {
                    editItem (request, response);
            }
            case "/inventory/form/view" -> {
                    editForm (request, response);
            }
            case "/inventory/form/delete" -> {
                    deleteItem (request, response);
            }
            case "/search" -> {
                    searchDetails (request, response);
            }
            default -> inventoryList(request, response);    
        }
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    private void addInventory (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher lg = getServletContext().getRequestDispatcher(
                "/WEB-INF/AddInventory.jsp");
        lg.forward(request, response);
    }
    private void editForm (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productid = Integer.parseInt(request.getParameter("productid"));
        inventorydao inventory = new inventorydao();
        inventorymodel inventoryDetails = inventory.getinventoryDetails(productid);
        request.setAttribute("itemDetails", inventoryDetails);
        RequestDispatcher lg = getServletContext().getRequestDispatcher(
                "/WEB-INF/EditInventory.jsp");
        lg.forward(request, response);
    }
    private void inventoryList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        inventorydao item = new inventorydao();
        ArrayList<inventorymodel> inventoryList = item.getinventoryList();
        request.setAttribute("inventoryList", inventoryList);
        
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/Inventory.jsp");
        rd.forward(request,response);
    }
    private void addItem (HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {
        String productname = request.getParameter("productname");
        String productdesc = request.getParameter("productdesc");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int price = Integer.parseInt(request.getParameter("price"));
        
        inventorydao item = new inventorydao();
        inventorymodel product = new inventorymodel(productname, productdesc, quantity, price);
        item.addItem(product);
        response.sendRedirect("/TailTreats/inventory");
    }
    private void editItem(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productid = Integer.parseInt(request.getParameter("productid"));
        String productname = request.getParameter("productname");
        String productdesc = request.getParameter("productdesc");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int price = Integer.parseInt(request.getParameter("price"));
        inventorydao item = new inventorydao();
        inventorymodel updateItem = new inventorymodel(productid, productname, productdesc, quantity, price);
        item.editItem(updateItem);
        response.sendRedirect("/TailTreats/inventory");
    }
    private void deleteItem (HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {
        int productid = Integer.parseInt(request.getParameter("productid"));
        inventorydao item = new inventorydao();
        inventorymodel product = new inventorymodel(productid);
        item.deleteItem(product);
        response.sendRedirect("/TailTreats/inventory");
    }
    private void searchDetails(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productname = request.getParameter("productname");
        inventorydao item = new inventorydao();
        ArrayList<inventorymodel> searchDetails = item.searchDetails(productname);
        request.setAttribute("searchDetails", searchDetails);

        if (item.searchProduct(productname) == false){
            JOptionPane.showMessageDialog(null, "Item not found!");
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/NoResults.jsp");
            rd.forward(request,response);
        }else if (searchDetails.isEmpty()){
            JOptionPane.showMessageDialog(null, "No info was submitted.");
            response.sendRedirect("/TailTreats/inventory");
        } else{
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/SearchResults.jsp");
            rd.forward(request,response);
        }
    }
}
