/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tailtreats.controllers;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import tailtreats.dao.tailtreatsdao;
import tailtreats.model.tailtreatsmodel;

/**
 *
 * @author Eliseio
 */
public class login extends HttpServlet {

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
            case "/login/submit" -> {
            try {
                loginDetails(request, response);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
            default ->
                viewlogin(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewlogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher lg = getServletContext().getRequestDispatcher(
                "/login.jsp");
        lg.forward(request, response);
    }

    private void loginDetails(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if ("".equals(username) || "".equals(password)) {
            JOptionPane.showMessageDialog(null, "Username/Password is blank. Please try again.");
            response.sendRedirect("/TailTreats/login");
        } else {
            tailtreatsdao login = new tailtreatsdao();
            tailtreatsmodel logDetails = login.getloginDetails(username, password);

            if (login.isAccountLocked(username) == false &&login.getFailedAttempts(username) <= 3) {
                if (logDetails != null) {
                    HttpSession session = request.getSession();
                    session.setAttribute("logDetails", logDetails);
                    login.resetFailedAttempts(username);
                    
                    if ("Admin".equals(logDetails.getrole())) {
                        login.updateStatus(logDetails);
                        JOptionPane.showMessageDialog(null, "Admin Log-in Success!");
                        response.sendRedirect("/TailTreats/admin/usertable");
                    } else if ("Client".equals(logDetails.getrole())) {
                        login.updateStatus(logDetails);
                        JOptionPane.showMessageDialog(null, "Log-in Success!");
                        response.sendRedirect("/TailTreats/home");
                    }
                } else {
                    login.incrementFailedAttempts(username);
                    if (login.getFailedAttempts(username) < 3) {
                        JOptionPane.showMessageDialog(null, "Invalid Credentials. Try again.");
                        response.sendRedirect("/TailTreats/login");
                    } else if (login.getFailedAttempts(username) == 3) {
                        login.lockAccount(username);
                        login.setLockDuration(username, 1);
                        JOptionPane.showMessageDialog(null, "Account Locked!");
                        response.sendRedirect("/TailTreats/login");
                    }
                }
            }else if (login.isAccountLocked(username) == true){
                login.getLockDuration(username);
                tailtreatsmodel remain = login.timer(username);
                long secondsPassed = 60 - remain.getsecondsPassed();
                
                JOptionPane.showMessageDialog(null, "Account locked. Will unlock in " +secondsPassed + " seconds");
                response.sendRedirect("/TailTreats/login");
            }       
        }
    }
}
