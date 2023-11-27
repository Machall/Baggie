<%-- 
    Document   : card
    Created on : 25/11/2023, 5:57:17 p. m.
    Author     : memor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="divInComplete" class="col position-relative d-flex flex-column align-items-center ">
    <h2 class="mx-5 mb-3">To Do</h2>
    <c:forEach var="index" begin="0" end="${tasks.size()}" step="1">
        <c:set var="task" value="${tasks.get(index)}" />
        <div id="myCard" class="card bg-info mb-5 ms-3 rounded text-black p-3 d-flex justify-content-center d-flex align-items-end" style="width: 30rem;">
            <div class="card-body bg-secondary-subtle">
                <i class="fas fa-solid fa-list-check card-img-top card-tittle text-center"></i>
                <h5 class="card-title text-center">${task.getName()}</h5>
                <p class="card-text text-center">${task.getDescription()}</p>
                <h6 class="card-subtitle mb-2 ms-3 text-body-secondary text-start">Activities</h6>
                <c:forEach var="activity" items="${task.getActivities()}">
                    <div class="form-check ms-3"> <!-- Puedes ajustar el valor de ms- según sea necesario -->
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                        <label class="form-check-label" for="flexCheckDefault1">
                            ${activity}
                        </label>
                    </div>


                    <div class="progress m-2" role="progressbar" aria-label="Default striped example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                        <div class="progress-bar progress-bar-striped bg-primary" ></div>
                    </div>
            </div>
    </c:forEach>
</div>
</c:forEach>
</div>
