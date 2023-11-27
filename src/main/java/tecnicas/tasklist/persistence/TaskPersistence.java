/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tecnicas.tasklist.persistence;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.type.CollectionType;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import tecnicas.tasklist.models.Task;

public class TaskPersistence {

    private static final String FILE_PATH = "../../Baggie/data.json";
    private static final ObjectMapper objectMapper = new ObjectMapper();

    public void saveTask(List<Task> taks) {
        try {
            objectMapper.enable(SerializationFeature.INDENT_OUTPUT);
            objectMapper.writeValue(new File(FILE_PATH), taks);
            System.out.println("Task stored in the JSON file.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<Task> getTasks() {
        File file = new File(FILE_PATH);
        if (!file.exists()) {
            System.out.println("El Archivo no existe. Creando uno Nuevo.");
            return new ArrayList<>();
        }
        try {
            CollectionType listType = objectMapper.getTypeFactory().constructCollectionType(ArrayList.class, Task.class);
            return objectMapper.readValue(new File(FILE_PATH), listType);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void modifyTask(List<Task> tasks, String name, String newName, String newDescription, ArrayList<String> newActivities) {
        Optional<Task> taskFound = tasks.stream().filter(task -> task.getName().equals(name)).findFirst();
        if (taskFound.isPresent()) {
            if (newName != null) {
                taskFound.get().setName(newName);
            }
            if (newDescription != null) {
                taskFound.get().setDescription(newDescription);
            }
            if (newActivities != null) {
                taskFound.get().setActivities(newActivities);
            }
            saveTask(tasks);
            System.out.println("Task successfully modified.");
        } else {
            System.out.println("No se encontró la tarea con el nombre: "+name);
        }

    }

    public void updateCompleteStatus(List<Task> tasks, String name, boolean newStatus) {
        Optional<Task> taskFound = tasks.stream().filter(task -> task.getName().equals(name)).findFirst();
        if (taskFound.isPresent()) {
            taskFound.get().setCompleteStatus(newStatus);
            saveTask(tasks);
        } else {
            System.out.println("No se encontró la tarea con el nombre: "+name);
        }
    }
    
    public void updateActivitiesChecked(List<Task> tasks, String name){
        Optional<Task> taskFound = tasks.stream().filter(task -> task.getName().equals(name)).findFirst();
        if (taskFound.isPresent()) {
            System.out.println("Se encontró la tarea: "+name);
            ArrayList<Boolean> tempList = new ArrayList<>();
            for(int i = 0 ; i< taskFound.get().getActivitiesChecked().size() ; i++)
            {
                tempList.add(true);
            }
            taskFound.get().setActivitiesChecked(tempList);
            saveTask(tasks);
        } else {
            System.out.println("No se encontró la tarea con el nombre: "+name);
        }
    }

    public void deleteTask(List<Task> tasks, String name) {
        tasks.removeIf(task -> task.getName() == name);
        saveTask(tasks);
        System.out.println("Task successfully deleted.");
    }

    public Task searchTask(List<Task> tasks, String name) {
        Optional<Task> taskFound = tasks.stream().filter(task -> task.getName().equals(name)).findFirst();
        if (taskFound.isPresent()) {
            System.out.println("Se encontró la tarea: "+name);
            return taskFound.get();
        } else {
            System.out.println("No se encontró la tarea con el nombre: "+name);
            return null;
        }

    }
}
