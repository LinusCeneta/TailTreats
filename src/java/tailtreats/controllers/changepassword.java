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
import javax.swing.JOptionPane;
import tailtreats.dao.changepassvalid;
import tailtreats.dao.tailtreatsdao;
import tailtreats.model.tailtreatsmodel;

/**
 *
 * @author Eliseio
 */
public class changepassword extends HttpServlet {

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
            case "/changepassword/submit" -> {
                    changeform (request, response);
            }
            default -> viewchange(request, response);
                    
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void viewchange (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher lg = getServletContext().getRequestDispatcher(
                "/changepassword.jsp");
        lg.forward(request, response);
    }
    private void changeform(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String newpassword = request.getParameter("changepassword");
        String password = newpassword.trim();
       
        if ("".equals(username) || "".equals(password)){
            JOptionPane.showMessageDialog(null, "Username/Change Password is blank. Please try again.");
            response.sendRedirect("/TailTreats/changepassword");
        }else{
            tailtreatsdao login = new tailtreatsdao();
            tailtreatsmodel logDetails = login.accountverDetails(username);
            if(logDetails != null){
                changepassvalid verify = new changepassvalid();
                Boolean result = verify.changepass_Validation(password);
        
                if (result == true) {
                    int id = logDetails.getid();

                    if (password.equals(logDetails.getpassword())) {
                        JOptionPane.showMessageDialog(null, "Password must not be the same. Try again.");
                        response.sendRedirect("/TailTreats/changepassword");
                    } else if (!password.equals(logDetails.getpassword())) {
                        login.changePassword(id,username, password);
                        response.sendRedirect("/TailTreats/login");
                    }
                }else {
                    response.sendRedirect("/TailTreats/changepassword");
                }
            } else {
                JOptionPane.showMessageDialog(null, "Username does not exist. Try again.");
                response.sendRedirect("/TailTreats/changepassword");
            }
        }
    }
}
