/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tecnicas.tasklist.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
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
@WebServlet(name = "SvGetTask", urlPatterns = {"/index"})
public class SvGetTask extends HttpServlet {

    private Controller control;

    @Override
    public void init() throws ServletException {
        super.init();
        control = new Controller();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Task> tasks = control.getTasks();
        request.setAttribute("tasks", tasks);
        RequestDispatcher dispatcher = request.getRequestDispatcher("tasks.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String taskName = request.getParameter("anTask");
        Task anTask = control.searchTask(taskName);
        control.updateCompleteStatus(taskName, true);
        control.updateActivitiesChecked(taskName);
        response.setContentType("application/json");
        response.getWriter().write("{ \"success\": true }");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
