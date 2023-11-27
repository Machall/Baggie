/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tecnicas.tasklist.servlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tecnicas.tasklist.controllers.Controller;
import tecnicas.tasklist.models.Task;

/**
 *
 * @author memor
 */
@WebServlet(name = "SvUpdateTaskStatus", urlPatterns = {"/UpdateTask"})
public class SvUpdateTaskStatus extends HttpServlet {

    Controller control = new Controller();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("crud.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("crud.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nameTask = request.getParameter("taskUpdateName");
        String descriptionTask = request.getParameter("taskUpdateDescription");
        ArrayList<String> activitiesTask = new ArrayList<String>();
        int activityCounter = Integer.parseInt(request.getParameter("countUpdateActivitie"));
        for (int i = 0; i < activityCounter + 1; i++) {
            activitiesTask.add(request.getParameter("activitiesUpdate" + i));
        }
        response.sendRedirect("UpdateTask");
        control.modifyTask(nameTask, nameTask, descriptionTask, activitiesTask);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
