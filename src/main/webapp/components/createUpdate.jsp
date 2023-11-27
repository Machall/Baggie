<%-- 
    Document   : create
    Created on : 26/11/2023, 9:47:03 p. m.
    Author     : memor
--%>

<%@page import="tecnicas.tasklist.models.Task"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="divCreate" class="col position-relative d-flex flex-column align-items-center ">
    <h2 class="mx-5 mb-3">To Create</h2>
    <div id="myCard" class="card bg-info mb-5 ms-3 rounded text-black p-3 d-flex justify-content-center d-flex align-items-end" style="width: 30rem;">
        <div class="card-body bg-secondary-subtle" style="width: 28rem;">
            <i class="fas fa-solid fa-list-check card-img-top card-tittle text-center"></i>
            <h5  class="card-title text-center m-3">Create A New Task</h5>
            <form id="myForm" class="container text-center " action="CreateUpdateTask" method="POST">
                <div class="row mpad-1">
                    <input class="form-control rounded" type="text" id="taskName" name="taskName"  placeholder="Name" required >
                </div>
                <div class="row mpad-1">
                    <input class="form-control rounded" type="text" id="taskDescription" name="taskDescription"  placeholder="Description" required>
                </div>
                <div id="activitiesContainer" >
                    <input class="form-control rounded" type="hidden" id="countActivitie" name="countActivitie" value="0">
                </div>
                <div class="mpad-1 w-90-custom input-group">
                    <input id="activity" name="activities0" class="form-control" type="text" placeholder="An Activity..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button" onclick="addActivity()"><i class="fas fa-solid fa-plus"></i></button>
                </div>
                <button class="mt-2 ms-3 btn btn-primary d-flex " type="submit" >Submit</button>
            </form>
        </div>
    </div>
    

       

