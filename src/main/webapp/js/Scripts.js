document.addEventListener("DOMContentLoaded", function () {

            var checkboxes = document.querySelectorAll(' .form-check-input');
            var progressBar = document.querySelector(' .progress-bar');

            // Actualizar la barra de progreso al cargar la página
            checkboxes.forEach(function (checkbox) {
                if (checkbox.checked) {
                    checkbox.dispatchEvent(new Event('change'));
                }
            });
   
    });
function addActivity() {

    var activityCounter = document.getElementById('countActivitie');
    var countfieldsInt = (parseInt(activityCounter.value, 10));
    var activity = document.getElementById('activity').value;


    var newDiv = document.createElement('div');
    newDiv.className = 'row mpad-1';


    var newField = document.createElement('input');
    newField.type = 'text';
    newField.value = activity;
    newField.name = 'activities' + countfieldsInt;
    newField.className = 'form-control rounded';
    newField.setAttribute('writer', false);
    newField.setAttribute('placeholder', "An Activity");


    newDiv.appendChild(newField);


    document.getElementById('activitiesContainer').appendChild(newDiv);
    document.getElementById('countActivitie').value = countfieldsInt + 1;


    document.getElementById('activity').name = 'activities' + (countfieldsInt + 1);
    document.getElementById('activity').value = '';

}


function addUpdateActivity() {

    var activityUpdateCounter = document.getElementById('countUpdateActivitie');
    var countfieldsInt = (parseInt(activityUpdateCounter.value, 10));
    var activity = document.getElementById('activityUpdate').value;


    var newDiv = document.createElement('div');
    newDiv.className = 'row mpad-1';


    var newField = document.createElement('input');
    newField.type = 'text';
    newField.value = activity;
    newField.name = 'activitiesUpdate' + countfieldsInt;
    newField.className = 'form-control rounded';
    newField.setAttribute('writer', false);
    newField.setAttribute('placeholder', "An Activity");


    newDiv.appendChild(newField);


    document.getElementById('activitiesUpdateContainer').appendChild(newDiv);
    document.getElementById('countUpdateActivitie').value = countfieldsInt + 1;
    console.log(activityCounter);

    document.getElementById('activityUpdate').name = 'activitiesUpdate' + (countfieldsInt + 1);
    document.getElementById('activityUpdate').value = '';

}



