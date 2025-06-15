/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tailtreats.controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tailtreats.dao.tailtreatsdao;
import tailtreats.model.tailtreatsmodel;

/**
 *
 * @author Eliseio
 */

public class form extends HttpServlet {
    
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
            case "/form/register-successful" -> {
                    createAccount (request, response);
            }
            default -> viewform(request, response);    
        }
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    private void viewform (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher lg = getServletContext().getRequestDispatcher(
                "/form.jsp");
        lg.forward(request, response);
    }
    private void createAccount (HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String middlename = request.getParameter("middlename");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String mobilenumber = request.getParameter("mobilenumber");
        String role = request.getParameter("role");
        
        tailtreatsmodel user = new tailtreatsmodel(username, password, firstname, middlename, lastname, address, birthday, mobilenumber, role);
        tailtreatsdao reg = new tailtreatsdao();
        reg.createUser(user);
        response.sendRedirect("/TailTreats/login");
    }
}
