/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.*;
import api.*;

/**
 *
 * @author tranminhquan
 */

public class BookingServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    BookingService _bookingService;
    
    public BookingServlet() {
        _bookingService = new BookingService();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        Enumeration<String> parameterNames = request.getParameterNames();

        Booking _booking = new Booking();
        _booking.setId(_bookingService.generateID());
        _booking.setUserID("UID0000001");
        
        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            System.out.println(paramName);
            String[] paramValue = request.getParameterValues(paramName);
            System.out.println(paramValue[0]);
            
            if (paramName.equals("id"))
                _booking.setHomestayID(paramValue[0].substring(0, paramValue[0].length() - 1));
//            _booking.setUserID(_booking.getUserID());
            if (paramName.equals("checkin"))
                _booking.setCheckin(java.sql.Date.valueOf(paramValue[0]));
            if (paramName.equals("nb_people"))
                _booking.setQuantity(Integer.parseInt(paramValue[0]));      
        }
        _bookingService.InsertBookingTour(_booking);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
