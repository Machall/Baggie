function addActivity() {
    // Get the value of the activity field
    var activity = document.getElementById('activity').value;

    // Create a new div for the activity
    var newDiv = document.createElement('div');
    newDiv.className = 'row mpad-1';

    // Create a new text field to display the activity
    var newField = document.createElement('input');
    newField.type = 'text';
    newField.value = activity;  // No need to add 'Activity: ' here
    newField.name = 'activities[]'; // Use an array to handle multiple activities
    newField.className = 'rounded';
    newField.setAttribute('writer', false); // Make the field editable
    newField.setAttribute('placeholder', "An Activity");

    // Add the new field to the div
    newDiv.appendChild(newField);

    // Add the new div to the activities container
    document.getElementById('activitiesContainer').appendChild(newDiv);

    // Clear the activity field
    document.getElementById('activity').value = '';
}

function submitForm() {
    // Get the values from the fields
    var name = document.getElementById('taskName').value;
    var description = document.getElementById('taskDescription').value;

    // Get the activities from the fields in the container
    var activities = [];
    var fields = document.getElementById('activitiesContainer').getElementsByTagName('input');
    for (var i = 0; i < fields.length; i++) {
        activities.push(fields[i].value);
    }
    if (document.getElementById('activity').value !== '') {
        activities.push(document.getElementById('activity').value);
    }

    // Display the information in the browser console
    console.log('Name:', name);
    console.log('Description:', description);
    console.log('Activities:', activities);

    // You can send this information to a server here if necessary

    // Clear the form and the activities container
    document.getElementById('myForm').reset();
    document.getElementById('activitiesContainer').innerHTML = '';
}
function addUpdateActivity() {
    // Get the value of the activity field
    var activity = document.getElementById('activityUpdate').value;

    // Create a new div for the activity
    var newDiv = document.createElement('div');
    newDiv.className = 'row mpad-1';

    // Create a new text field to display the activity
    var newField = document.createElement('input');
    newField.type = 'text';
    newField.value = activity;  // No need to add 'Activity: ' here
    newField.name = 'activities[]'; // Use an array to handle multiple activities
    newField.className = 'rounded';
    newField.setAttribute('writer', false); // Make the field editable
    newField.setAttribute('placeholder', "An Activity");

    // Add the new field to the div
    newDiv.appendChild(newField);

    // Add the new div to the activities container
    document.getElementById('activitiesUpdateContainer').appendChild(newDiv);

    // Clear the activity field
    document.getElementById('activityUpdate').value = '';
}

function submitUpdateForm() {
    // Get the values from the fields
    var name = document.getElementById('taskUpdateName').value;
    var description = document.getElementById('taskUpdateDescription').value;

    // Get the activities from the fields in the container
    var activities = [];
    var fields = document.getElementById('activitiesUpdateContainer').getElementsByTagName('input');
    for (var i = 0; i < fields.length; i++) {
        activities.push(fields[i].value);
    }
    if (document.getElementById('activityUpdate').value !== '') {
        activities.push(document.getElementById('activityUpdate').value);
    }

    // Display the information in the browser console
    console.log('Name:', name);
    console.log('Description:', description);
    console.log('Activities:', activities);

    // You can send this information to a server here if necessary

    // Clear the form and the activities container
    document.getElementById('myUpdateForm').reset();
    document.getElementById('activitiesUpdateContainer').innerHTML = '';
}

function searchData() {
    // Get the search term
    var searchTerm = document.getElementById('searchInput').value.toLowerCase();

    // Perform the search in the JSON file (data.json in this case)
    fetch('data.json')
        .then(response => response.json())
        .then(data => {
            // Filter the results that match the search term
            var results = data.filter(item => item.name.toLowerCase().includes(searchTerm));

            // Display the results
            displayResults(results);
        })
        .catch(error => console.error('Error fetching data:', error));
}

// Function to display the results
function displayResults(results) {
    var resultsContainer = document.getElementById('searchResults');
    resultsContainer.innerHTML = ''; // Clear previous results

    // Display the results in the container
    if (results.length > 0) {
        results.forEach(result => {
            resultsContainer.innerHTML += `<p>ID: ${result.id}, Name: ${result.name}</p>`;
        });
    } else {
        resultsContainer.innerHTML = '<p>No results found.</p>';
    }
}

document.addEventListener("DOMContentLoaded", function () {
    // For the 'divInComplete' container
    var checkboxes1 = document.querySelectorAll('#divInComplete .form-check-input');
    var progressBar1 = document.querySelector('#divInComplete .progress-bar');

    checkboxes1.forEach(function (checkbox) {
        checkbox.addEventListener('change', function () {
            var checkedCheckboxes = document.querySelectorAll('#divInComplete .form-check-input:checked').length;
            var totalCheckboxes = checkboxes1.length;
            var percentage = (checkedCheckboxes / totalCheckboxes) * 100;

            progressBar1.style.width = percentage + '%';
            progressBar1.setAttribute('aria-valuenow', percentage);

            // Change the color of the progress bar to green when it's at 100%
            progressBar1.classList.toggle('bg-success', percentage === 100);
        });
    });

    // For the 'divComplete' container
    var checkboxes2 = document.querySelectorAll('#divComplete .form-check-input');
    var progressBar2 = document.querySelector('#divComplete .progress-bar');

    checkboxes2.forEach(function (checkbox) {
        checkbox.addEventListener('change', function () {
            var checkedCheckboxes = document.querySelectorAll('#divComplete .form-check-input:checked').length;
            var totalCheckboxes = checkboxes2.length;
            var percentage = (checkedCheckboxes / totalCheckboxes) * 100;

            progressBar2.style.width = percentage + '%';
            progressBar2.setAttribute('aria-valuenow', percentage);

            // Change the color of the progress bar to green when it's at 100%
            progressBar2.classList.toggle('bg-success', percentage === 100);
        });
    });
});

