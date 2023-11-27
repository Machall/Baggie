/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tecnicas.tasklist.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tecnicas.tasklist.controllers.Controller;

/**
 *
 * @author memor
 */
@WebServlet(name = "SvTask", urlPatterns = {"/CreateTask"})
public class SvTask extends HttpServlet {
    
    Controller control = new Controller();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("crud.jsp");
        dispatcher.forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nameTask = request.getParameter("taskName");
        String descriptionTask = request.getParameter("taskDescription");
        ArrayList<String> activitiesTask = new ArrayList<String>();
        int activityCounter = Integer.parseInt(request.getParameter("countActivitie"));
        for(int i=0;i < activityCounter+1; i++)
        {
            activitiesTask.add(request.getParameter("activities"+i));
        }
        response.sendRedirect("CreateUpdateTask");
        control.createTask(nameTask, descriptionTask, activitiesTask);
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
