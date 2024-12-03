// Open the modal
function openModal(section) {
    document.getElementById("myModal").style.display = "block";
}

// Close the modal
function closeModal() {
    document.getElementById("myModal").style.display = "none";
}

// Save changes and update profile fields dynamically
// Function to send form data to the servlet
function saveChanges() {
    // Collect data from the form fields
    const data = {
        profilePic: $("#edit-profile-pic").val(),
        name: $("#edit-name").val(),
        level: $("#edit-level").val(),
        profileLink: $("#edit-profile-link").val(),
        institute: $("#edit-institute").val(),
        address: $("#edit-address").val(),
        email: $("#edit-email").val(),
        mobile: $("#edit-mobile").val(),
        dob: $("#edit-dob").val(),
        gender: $("#edit-gender").val(),
        location: $("#edit-location").val(),
        hometown: $("#edit-hometown").val(),
        experience: $("#edit-experience").val(),
        degree: $("#edit-degree").val(),
        educationInstitute: $("#edit-education-institute").val(),
        batch: $("#edit-batch").val(),
        educationType: $("#edit-education-type").val(),
        skills: $("#edit-skills").val(),
        certifications: $("#edit-certifications").val()
    };
	// Prevent form submission to save data to the database
	 document.getElementById("editForm").addEventListener("submit", function(event) {
	     event.preventDefault();
	     alert("Form submission is disabled for testing.");
	 });
    // Send AJAX request to the servlet
    $.ajax({
        url: "Profile1",  // Name of the servlet
        type: "POST",
        data: data,
        success: function(response) {
            alert("Profile saved successfully!");
            closeModal();
        },
        error: function(xhr, status, error) {
            console.error("Error: " + error);
            alert("Failed to save profile.");
        }
    });
}
function handleFormSubmission(event) {
    // Prevent the form from submitting to the server
    event.preventDefault();

    // Get the values from the form
    const formData = new FormData(event.target);
    
    // Example: log the data to the console (for local handling, not sending to the server)
    formData.forEach((value, key) => {
        console.log(`${key}: ${value}`);
    });

    // You can also manipulate the form data further here, for example:
    // Update the profile display on the page based on the entered data.
    alert("Data will not be submitted to the database.");
}


    // Update certifications
    document.getElementById("certifications").innerText = certifications;

    // Close the modal
    closeModal();

