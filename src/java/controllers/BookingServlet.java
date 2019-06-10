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
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;

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
    HomestayService _homestayService;
    
    public BookingServlet() {
        _bookingService = new BookingService();
        _homestayService = new HomestayService();
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
        User user = (User)request.getSession().getAttribute("userinfo");
        _booking.setId(_bookingService.generateID());
        _booking.setUserID(user.getID());
        
        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            System.out.println(paramName);
            String[] paramValue = request.getParameterValues(paramName);
            System.out.println(paramValue[0]);
            
            if (paramName.equals("id"))
                _booking.setHomestayID(paramValue[0].substring(0, paramValue[0].length() - 1));
            if (paramName.equals("checkin"))
                _booking.setCheckin(java.sql.Date.valueOf(paramValue[0]));
            if (paramName.equals("nb_people"))
                _booking.setQuantity(Integer.parseInt(paramValue[0]));      
        }
        Homestay _homestay = _homestayService.LoadById(_booking.getHomestayID());
        ArrayList<Booking> _list_booking = new ArrayList<Booking>();
        _list_booking = _bookingService.LoadById(_booking.getHomestayID());
        Date initialDate;
        Calendar c = Calendar.getInstance();
        boolean flag = true;
        
        // Kiểm tra xem ngày khách chọn checkin có hợp lý với thời gian các đơn booking khác hay ko
        for (int i = 0; i < _list_booking.size(); i++) {
            initialDate = _list_booking.get(i).getCheckin();
            System.out.println("Initial date:" + initialDate);
            c.setTime(initialDate);
            c.add(Calendar.DATE, _homestay.getNumberDays());
            if (_booking.getCheckin().compareTo(c.getTime()) <= 0) {
                flag = false;
                break;
            }           
        }
        
        // Kiểm tra số lượng khách mà người dùng nhập có lớn hơn số người quy định ở homestay ko
        if (_booking.getQuantity() > _homestay.getNumberPeople() || flag == false) {
            response.sendRedirect("index.html");
        } else {
            _bookingService.InsertBookingTour(_booking);    
            response.sendRedirect("homestays/" + _booking.getHomestayID() + ".html");
        }
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
