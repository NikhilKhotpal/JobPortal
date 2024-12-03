$(document).ready(function() {
    $.ajax({
        url: 'GetJobs', // Servlet URL
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            console.log(data); // Add this line to see data in the browser console

            if (data.length > 0) {
                $.each(data, function(index, job) {
                    $('#jobResults').append(
                        '<div>' +
                        '<h3>' + job.jobTitle + '</h3>' +
                        '<p>Location: ' + job.location + '</p>' +
                        '</div>'
                    );
                });
            } else {
                $('#jobResults').append('<p>No jobs found matching your criteria.</p>');
            }
        },
        error: function(xhr, status, error) {
            console.log(xhr.responseText); // Add this to see error details
            $('#jobResults').append('<p>Error fetching job data.</p>');
        }
    });
});
