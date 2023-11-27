/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tecnicas.tasklist.models;

import java.util.ArrayList;

/**
 *
 * @author memor
 */
public class Task {

    private static int idCounter = 0;
    private String id;
    private String name;
    private String description;
    ArrayList<String> activities;
    ArrayList<Boolean> activitiesChecked;
    private boolean completeStatus;

    public Task() {

    }

    public Task(String name, String description, ArrayList<String> activities) {
        idCounter++;
        this.id = "TaskID" + idCounter;
        this.name = name;
        this.description = description;
        this.activities = activities;
        this.activitiesChecked = new ArrayList<>();
        for (int i = 0; i < this.activities.size(); i++) {
            activitiesChecked.add(false);
        }
        this.completeStatus = false;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public ArrayList<String> getActivities() {
        return activities;
    }

    public void setActivities(ArrayList<String> activities) {
        this.activities = activities;
    }

    public ArrayList<Boolean> getActivitiesChecked() {
        return activitiesChecked;
    }

    public void setActivitiesChecked(ArrayList<Boolean> activitiesChecked) {
        this.activitiesChecked = activitiesChecked;
    }

    public boolean getCompleteStatus() {
        return completeStatus;
    }

    public void setCompleteStatus(boolean completeStatus) {
        this.completeStatus = completeStatus;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Task{id='" + id + '\'' + ", name='" + name + '\'' + ", description='" + description + '\''
                + ", status='" + completeStatus + '\'' + ", activitiesChecked=" + activitiesChecked + '\'' + ", activities=" + activities + '}';

    }
}
