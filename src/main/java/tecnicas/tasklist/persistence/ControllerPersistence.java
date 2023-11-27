/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tecnicas.tasklist.persistence;

import java.util.ArrayList;
import java.util.List;
import tecnicas.tasklist.models.Task;

/**
 *
 * @author memor
 */
public class ControllerPersistence {
    TaskPersistence taskPersis = new TaskPersistence();
    
    public void createTask(List<Task> tasks){
        taskPersis.saveTask(tasks);
    }
    public void modifyTask(List<Task> tasks, String name, String newName, String newDescription, ArrayList<String> newActivities){
        taskPersis.modifyTask(tasks, name, newName, newDescription, newActivities);
    }
    public void deleteTask(List<Task> tasks, String name){
        taskPersis.deleteTask(tasks, name);
    }
    public Task searchTask(List<Task> tasks, String name){
         return taskPersis.searchTask(tasks, name);
    }
    public List<Task> getTasks(){
        return taskPersis.getTasks();
    }
    public void updateCompleteStatus(List<Task> tasks, String name, boolean status){
        taskPersis.updateCompleteStatus(tasks, name, status);
    }
    public void updateActivitiesChecked(List<Task> tasks, String name)
    {
        taskPersis.updateActivitiesChecked(tasks, name);
    }
}
