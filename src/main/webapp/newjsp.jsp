<%-- 
    Document   : page1
    Created on : 25/11/2023, 5:50:59 p. m.
    Author     : memor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/firstPart.jsp"%>


<div id="divInComplete" class="col position-relative d-flex flex-column align-items-center ">
    <h2 class="mx-5 mb-3">To Do</h2>

    <c:set var="task" value=" />
           <div id="myCard" class="card bg-info mb-5 ms-3 rounded text-black p-3 d-flex justify-content-center d-flex align-items-end" style="width: 30rem;">
        <div class="card-body bg-secondary-subtle">
            <i class="fas fa-solid fa-list-check card-img-top card-tittle text-center"></i>
            <h5 class="card-title text-center"></h5>
            <p class="card-text text-center"></p>
            <h6 class="card-subtitle mb-2 ms-3 text-body-secondary text-start">Activities</h6>

            <div class="form-check ms-3"> <!-- Puedes ajustar el valor de ms- según sea necesario -->
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                <label class="form-check-label" for="flexCheckDefault1">

                </label>
            </div>


            <div class="progress m-2" role="progressbar" aria-label="Default striped example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                <div class="progress-bar progress-bar-striped bg-primary" ></div>
            </div>
        </div>

</div>




<%@include file="components/finalPart.jsp"%>
<-<!------------Modify---------------->

<div id="divCreate" class="col position-relative d-flex flex-column align-items-center ">
    <h2 class="mx-5 mb-3">To Modify</h2>
    <div id="myCard" class="card bg-info mb-5 ms-3 rounded text-black p-3 d-flex justify-content-center d-flex align-items-end" style="width: 30rem;">
        <div class="card-body bg-secondary-subtle" style="width: 28rem;">
            <i class="fas fa-solid fa-list-check card-img-top card-tittle text-center"></i>
            <h5  class="card-title text-center m-3">Modify A Task</h5>
            <div class="mpad-1 w-90-custom ">
                <form id="mySearchForm" class="input-group container text-center" action="UpdateTask" method="GET">
                    <input id="searchTask" name="searchTask" class="form-control" type="text" placeholder="Search a Task..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearchUpdate" type="submit" onclick="getTaskSearched()"><i class="fas fa-solid fa-magnifying-glass"></i></button>  
                </form>

            </div>
            <form id="myForm" class="container text-center " action="UpdateTask" method="POST">
                <div class="row mpad-1">
                    <input class="form-control rounded" type="text" id="taskUpdateName" name="taskUpdateName"  placeholder="Name" required >
                </div>
                <div class="row mpad-1">
                    <input class="form-control rounded" type="text" id="taskUpdateDescription" name="taskUpdateDescription"  placeholder="Description" required>
                </div>
                <div id="activitiesUpdateContainer" >
                    <input class="form-control rounded" type="hidden" id="countUpdateActivitie" name="countUpdateActivitie" value="0">
                </div>
                <div class="mpad-1 w-90-custom input-group">
                    <input id="activityUpdate" name="activitiesUpdate0" class="form-control" type="text" placeholder="An Activity..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearchUpdate" type="button" onclick="addUpdateActivity()"><i class="fas fa-solid fa-plus"></i></button>
                </div>
                <button class="mt-2 ms-3 btn btn-primary d-flex " type="submit" >Submit</button>
            </form>
        </div>
    </div>