let allJobs = [];

$(document).ready(function() {
    $.ajax({
        url: 'joblist1', // Replace with your server URL for fetching jobs
        type: 'GET',
        dataType: 'json',
        success: function(data) {
			console.log(data);
            console.log('Fetched job data:', data); // Log the fetched data
            allJobs = data;
            renderJobListings(); // Renders the job listings directly
        },
        error: function(xhr, status, error) {
            console.error('Error fetching job list:', error);
        }
    });
});

// Function to update the job count
function updateJobCount(count) {
    $('#jobFoundCount').text(`${count} jobs found`); // Displays number of jobs found
}

// Function to render job listings for Manufacturing and Engineering
function renderJobListings() {
    const jobListContainer = $('#jobListContainer');
    jobListContainer.empty();

    // Log allJobs to ensure it has data
    console.log('All Jobs:', allJobs);

    // Filter jobs for Manufacturing and Engineering (case-insensitive)
    const filteredJobs = allJobs.filter(job => 
        job.category.toLowerCase() === 'manufacturing' || job.category.toLowerCase() === 'engineering'
    );

    // Log filtered jobs to ensure filtering works
    console.log('Filtered Jobs:', filteredJobs);

    filteredJobs.forEach(job => {
        const createdAtDate = new Date(job.createdAt);
        const formattedDate = createdAtDate.toLocaleString();

        const card = `
            <div class="card" data-job-id="${job.id}">
                <div class="card-content">
                    <h2 class="card-title">${job.jobTitle}</h2>
                    <p class="card-text"><strong>Company:</strong> ${job.company}</p>
                    <p class="card-text"><strong>Type:</strong> ${job.jobType}</p>
                    <p class="card-text"><strong>Location:</strong> ${job.location}</p>
                    <p class="card-text"><strong>Experience:</strong> ${job.experience}</p>
                    <p class="card-text"><strong>Salary:</strong> ${job.salary}</p>
                    <p class="card-text"><strong>Posted On:</strong> ${formattedDate}</p>
                    <a href="apply.jsp?id=${job.id}"><button class="card-btn">Apply Now</button></a>
                </div>
            </div>
        `;

        jobListContainer.append(card);
    });

    updateJobCount(filteredJobs.length); // Call to update job count after rendering
}
