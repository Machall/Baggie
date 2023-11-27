<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="My task board" />
        <meta name="author" content="Sebastian Suarez Restrepo" />
        <title>My Little Backlog</title>
        <link href="css/stylesLocal.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body class="bg-page">
        <nav class="navbar navbar-expand-lg bg-body-secondary" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#TaskList">Backlog</a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="/TaskList">My Tasks</a></li>
                        <li class="nav-item"><a class="nav-link" href="">New Tasks</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <h1 class="text-center m-4">Task List</h1>

        <div id="divCreate" class="container  border border-black rounded bg-dark text-white">

            <div class="row">
                <div class="col m-2 ">
                    <h2 class="text-center m-2 mb-3">Create A New Task</h2>
                    <div class="card mb-3 ms-3 me-3 rounded">
                        <div class="card-body bg-secondary-subtle">
                            <form id="myForm" class="container text-center" action="SvTask" method="POST">
                                <div class="row mpad-1">
                                    <input type="text" id="taskName" name="taskName" class="rounded" placeholder="Name" required >
                                </div>
                                <div class="row mpad-1">
                                    <input type="text" id="taskDescription" name="taskDescription" class="rounded" placeholder="Description" required>
                                </div>
                                <div id="activitiesContainer" class="mt-3">
                                    <input type="hidden" id="countActivitie" name="countActivitie" value="0">
                                </div>
                                <div class="row mpad-1" >
                                    <input type="text" id="activity" name="activities0" placeholder="An Activity" class="w-auto rounded">
                                    <button type="button" onclick="addActivity()" class="btn btn-outline-secondary w-10-custom fas fa-solid fa-plus" >
                                    </button>
                                </div>
                                <button class="mt-2 btn btn-secondary" type="submit" >Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="divModify" class="container  border border-black rounded bg-dark text-white mt-5">

            <div class="row ">
                <div class="col m-2 ">
                    <h2 class="text-center m-2 mb-3">Modify A Task</h2>
                    <div class="card mb-3 ms-3 me-3 rounded">
                        <div class="card-body bg-secondary-subtle">
                            <form id="myUpdateForm" class="container text-center">
                                <div class="row mpad-1">
                                    <input type="text" id="taskUpdateName" class="rounded" placeholder="Name" required >
                                </div>
                                <div class="row mpad-1">
                                    <input type="text" id="taskUpdateDescription" class="rounded" placeholder="Description" required>
                                </div>
                                <div id="activitiesUpdateContainer" class="mt-3">
                                    <input type="hidden" id="countUpadateActivitie" name="countUpadateActivitie" value="0">
                                </div>
                                <div class="row mpad-1" >
                                    <input type="text" id="activityUpdate" placeholder="Activitie" class="w-90-custom rounded">
                                    <button type="button" onclick="addUpdateActivity()" class="btn btn-outline-secondary w-10-custom fas fa-solid fa-plus" >
                                    </button>
                                </div>
                                <button class="mt-2 btn btn-secondary" type="submit">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/32d784fd92.js" crossorigin="anonymous"></script>
        <script src="js/ScriptsLocal.js"></script>
    </body>
</html>