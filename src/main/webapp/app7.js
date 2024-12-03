$.ajax({
    url: '/JobPortal/userCount11',  // URL to your servlet
    type: 'GET',  // HTTP method (GET)
    dataType: 'json',  // Expect JSON response
    success: function(data) {
        // Assuming the JSON response is { "jobCount": 100 }
        var jobCount = data.jobCount;  // Access the job count
        console.log('Total jobs: ' + jobCount);

        // Example: Display job count in a HTML element
        $('#userCountDisplay').text(jobCount);
    },
    error: function(xhr, status, error) {
        console.error("Error fetching job count: ", error);
        $('#userCountDisplay').text("Error fetching job count");
    }
});
