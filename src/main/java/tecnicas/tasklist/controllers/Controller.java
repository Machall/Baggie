/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tecnicas.tasklist.controllers;

import java.util.ArrayList;
import java.util.List;
import tecnicas.tasklist.models.Task;
import tecnicas.tasklist.persistence.ControllerPersistence;

/**
 *
 * @author memor
 */
public class Controller {
    ControllerPersistence controlPersis = new ControllerPersistence();
    public static List<Task> tasksList = new ArrayList<>();
    public void createTask (String name, String description, ArrayList<String> activities){
        Task anTask = new Task(name, description, activities);
        tasksList.add(anTask);
        controlPersis.createTask(tasksList);
        System.out.println(controlPersis.getTasks());
    }
    public void modifyTask (String name, String newName, String newDescription, ArrayList<String> newActivities){
        controlPersis.modifyTask(tasksList, name, newName, newDescription, newActivities);
    }
    public void deleteTask (String name){
        controlPersis.deleteTask(tasksList, name);
    }
    public Task searchTask (String name){
        return controlPersis.searchTask(tasksList, name);
    }
    public void updateCompleteStatus(String name, boolean status)
    {
        controlPersis.updateCompleteStatus(tasksList, name, status);
    }
    public void updateActivitiesChecked (String name)
    {
        controlPersis.updateActivitiesChecked(tasksList, name);
    }
    public List<Task> getTasks(){
        if(controlPersis.getTasks() != null)
        {
            tasksList = controlPersis.getTasks();
        }
        return controlPersis.getTasks();
    }
    
}
