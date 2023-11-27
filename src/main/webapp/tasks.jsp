<%-- 
    Document   : page1
    Created on : 25/11/2023, 5:50:59 p. m.
    Author     : memor
--%>

<%@page import="java.util.List"%>
<%@page import="tecnicas.tasklist.models.Task"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/firstPart.jsp"%>


<div id="divInComplete" class="col position-relative d-flex flex-column align-items-center ">
    <h2 class="mx-5 mb-3">To Do</h2>


    <%
        List<Task> taskList = (List<Task>) request.getAttribute("tasks");
        for (int i = 0; i < taskList.size(); i++) {%>

    <div id="myCard<%= i%>" class="card bg-info mb-5 ms-3 rounded text-black p-3 d-flex justify-content-center d-flex align-items-end" style="width: 30rem;">
        <h6 id="labelStatus<%= i%>" class="d-flex flex-row-reverse text-success m-0" >Incomplete</h6>
        <div class="card-body bg-secondary-subtle " style="width: 28rem;">
            <i class="fas fa-solid fa-list-check card-img-top card-tittle text-center "></i>
            <h5 id = "nameTask<%= i%>" class="card-title text-center m-3"><%= taskList.get(i).getName()%></h5>
            <p  class="card-text text-center form-control"><%= taskList.get(i).getDescription()%> </p>

            <div class="form-control">
                <h6 class="card-subtitle mb-2 ms-3 text-body-secondary text-start">Activities</h6>
                <% for (int j = 0; j < taskList.get(i).getActivities().size(); j++) {%>
                <div class="form-check ms-3 "> <!-- Puedes ajustar el valor de ms- según sea necesario -->
                    <%
                        if (taskList.get(i).getActivitiesChecked().get(j)) {
                    %>
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault<%= i%>-<%= j%>" onchange="toggleTextDecoration(<%= i%>,<%= j%>)" checked>
                    <%
                    } else {
                    %>
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault<%= i%>-<%= j%>" onchange="toggleTextDecoration(<%= i%>,<%= j%>)" >
                    <%
                        }
                    %>
                    <script>
                        function toggleTextDecoration(indexDiv, index) {
                            var checkbox = document.getElementById('flexCheckDefault' + indexDiv + '-' + index);
                            var label = document.getElementById('activityText' + indexDiv + '-' + index);

                            if (checkbox.checked) {
                                label.style.textDecoration = 'line-through';
                                label.style.color = 'gray';
                            } else {
                                label.style.textDecoration = 'none';
                                label.style.color = ''; // Restaurar el color predeterminado
                            }
                        }
                        document.addEventListener("DOMContentLoaded", function () {
                            var checkboxes<%= i%> = document.querySelectorAll(' #myCard<%= i%> .form-check-input');
                            var progressBar<%= i%> = document.querySelector(' #myCard<%= i%> .progress-bar');
                            var progressBarValue = document.getElementById('progressBarValue<%= i%>');
                            var labelStatus = document.getElementById('labelStatus<%= i%>');
                            checkboxes<%= i%>.forEach(function (checkbox) {
                                checkbox.addEventListener('change', function () {
                                    var percentage = getProgressPercentage(<%= i%>);
                                    progressBar<%= i%>.style.width = percentage + '%';
                                    progressBar<%= i%>.setAttribute('aria-valuenow', percentage);
                                    progressBarValue.style.width = percentage + '%';
                                    progressBarValue.textContent = Math.round(percentage) + '%';
                                    if (percentage === 100) {
                                        labelStatus.textContent = 'Complete';
                                        progressBar<%= i%>.classList.remove('bg-primary');
                                        progressBar<%= i%>.classList.add('bg-success');
                                        updateTaskStatus(<%= i%>, percentage);
                                    } else {
                                        labelStatus.textContent = 'Incomplete';
                                        progressBar<%= i%>.classList.remove('bg-success');
                                        progressBar<%= i%>.classList.add('bg-primary');
                                    }
                                });
                            });
                        });
                        function getProgressPercentage(index) {
                            var checkboxes = document.querySelectorAll('#myCard' + index + ' .form-check-input');
                            var checkedCheckboxes = document.querySelectorAll('#myCard' + index + ' .form-check-input:checked').length;
                            var totalCheckboxes = checkboxes.length;

                            return (checkedCheckboxes / totalCheckboxes) * 100;
                        }
                        function updateTaskStatus(index, percentage) {
                            var labelElement = document.getElementById("nameTask" + index);
                            var content = labelElement.textContent;
                            if (percentage === 100) {
                                var xhr = new XMLHttpRequest();
                                xhr.open('POST', 'index', true);
                                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                                var params = 'anTask=' + content;
                                xhr.send(params);
                            }
                        }
                        function DeleteTask(){
                             var labelElement = document.getElementById("nameTask" + index);
                             var content = labelElement.textContent;
                             var xhr = new XMLHttpRequest();
                                xhr.open('POST', '', true);
                                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                                var params = 'anTask=' + content;
                                xhr.send(params);
                        }

                    </script>
                    <label class="form-check-label" id="activityText<%= i%>-<%= j%>" for="flexCheckDefault<%= i%>-<%= j%>">
                        <%= taskList.get(i).getActivities().get(j)%>
                    </label>
                </div>
                <% }%>
            </div>
            <div id="progressBar<%= i%>" class="progress m-2" role="progressbar" aria-label="Default striped example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                <div id="progressBarValue<%= i%>" class="progress-bar progress-bar-striped bg-primary text-dark" ></div>
            </div>

        </div>
        <div>
            <button class="mt-2 ms-3 btn btn-outline-secondary  " type="button" >Modify</button>
            <button class="mt-2 ms-3 btn btn-outline-secondary  " type="button" >Delete</button>
        </div>

    </div>
    <% }%>
</div>
<%@include file="components/finalPart.jsp"%>
