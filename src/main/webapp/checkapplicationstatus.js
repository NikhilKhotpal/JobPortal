/**
 * 
 */
// Apply for a job
function applyForJob(jobId) {
    const userId = getUserId(); // Function to get the current user's ID

    // Check if the user has already applied for the job
    $.ajax({
        url: '/JobPortal/checkApplicationStatus',
        method: 'POST',
        data: { jobId, userId },
        dataType: 'json',
        success: function(response) {
            if (response.applied) {
                alert('You have already applied for this job.'); // Already applied message
            } else {
                // Proceed to apply if the user hasn't applied yet
                $.ajax({
                    url: `apply.jsp?id=${jobId}`, // Replace with actual endpoint
                    method: 'POST',
                    success: function(response) {
                        appliedJobs.push(jobId); // Update the appliedJobs array
                        alert('You have successfully applied for this job!');
                        displayJobListings(jobs); // Update job listing
                    },
                    error: function() {
                        console.error('Error applying for job');
                    }
                });
            }
        },
        error: function() {
            console.error('Error checking application status');
        }
    });
}
