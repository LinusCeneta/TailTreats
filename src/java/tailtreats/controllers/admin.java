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
import tailtreats.dao.tailtreatsdao;
import tailtreats.model.tailtreatsmodel;

/**
 *
 * @author Eliseio
 */
public class admin extends HttpServlet {

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
            case "/admin/usertable" -> {
                    viewUser (request, response);
            }
            case "/admin/edit-user" -> {
                    editForm (request, response);
            }
            case "/admin/edit-submit" -> {
                    editUser (request, response);
            }
            case "/admin/delete-user" -> {
                    deleteUser (request, response);
            }
            default -> adminlogin(request, response);    
        }
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    private void adminlogin (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher lg = getServletContext().getRequestDispatcher(
                "/adminlogin.jsp");
        lg.forward(request, response);
    }
    
    private void viewUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        tailtreatsdao user = new tailtreatsdao();
        ArrayList<tailtreatsmodel> userList = user.getuserList();
        
        request.setAttribute("userList", userList);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/Registration Table.jsp");
        rd.forward(request,response);
    }
    private void editForm (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        tailtreatsdao user = new tailtreatsdao();
        tailtreatsmodel userDetails = user.getuserDetails(id);
        request.setAttribute("userDetails", userDetails);
        RequestDispatcher er = getServletContext().getRequestDispatcher(
                "/WEB-INF/EditAccount.jsp");
        er.forward(request, response);
    }
    
    private void editUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String middlename = request.getParameter("middlename");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String mobilenumber = request.getParameter("mobilenumber");
        String role = request.getParameter("role");
        tailtreatsdao edit = new tailtreatsdao();
        tailtreatsmodel update = new tailtreatsmodel(id, username, password, firstname, middlename, lastname, address, birthday, mobilenumber, role);
        edit.updateUser(update);
        response.sendRedirect("/TailTreats/admin/usertable");
    }
    private void deleteUser (HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        tailtreatsdao user = new tailtreatsdao();
        tailtreatsmodel account = new tailtreatsmodel(id);
        user.deleteUser(account);
        response.sendRedirect("/TailTreats/admin/usertable");
    }
    
}


