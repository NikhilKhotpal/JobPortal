let allJobs = [];
let filters = {
    jobTitle: '',
    location: ''
};
let jobsDisplayedCount = 6; // Initial display count
let searchTimer; // Debounce timer

$(document).ready(function() {
    // Fetch job listings from the server
    $.ajax({
        url: 'joblist', // Replace with your server URL for fetching jobs
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            allJobs = data; // Store fetched jobs
            renderJobListings(); // Initial render
            toggleJobCategories(); // Hide categories if needed
			togglegridcontainer();
            toggleLoadMoreButton(); // Show/hide the Load More button
            // Hide grid container during search
        },
        error: function(xhr, status, error) {
            console.error('Error fetching job list:', error);
        }
    });

    // Job Title Search with debounce
	// Job Title Search with debounce
	$('#jobTitleSearch').on('input', function() {
	    clearTimeout(searchTimer);
	    filters.jobTitle = $(this).val().toLowerCase();
	    searchTimer = setTimeout(function() {
	        renderJobListings();
	        toggleJobCategories();
			togglegridcontainer();
	        toggleLoadMoreButton();
	        // Update grid visibility
	    }, 300); // 300ms debounce delay
	});

	// Location Search with debounce
	$('#locationSearch').on('input', function() {
	    clearTimeout(searchTimer);
	    filters.location = $(this).val().toLowerCase();
	    searchTimer = setTimeout(function() {
	        renderJobListings();
	        toggleJobCategories();
			togglegridcontainer(); 
	        toggleLoadMoreButton();
	       // Update grid visibility
	    }, 300); // 300ms debounce delay
	});


    // Job Title Suggestions Click
    $(document).on('click', '.job-title-suggestion', function() {
        const selectedJobTitle = $(this).text();
        $('#jobTitleSearch').val(selectedJobTitle);
        filters.jobTitle = selectedJobTitle.toLowerCase();
        $('#jobTitleSuggestions').empty().hide();
        renderJobListings();
        toggleJobCategories();
		togglegridcontainer();
        toggleLoadMoreButton();
       
    });

    // Location Suggestions Click
    $(document).on('click', '.location-suggestion', function() {
        const selectedLocation = $(this).text();
        $('#locationSearch').val(selectedLocation);
        filters.location = selectedLocation.toLowerCase();
        $('#locationSuggestions').empty().hide();
        renderJobListings();
        toggleJobCategories();
		togglegridcontainer();
        toggleLoadMoreButton();
        
    });

    // Load More Button Click
    $('#loadMoreBtn').on('click', function() {
        jobsDisplayedCount += 6; // Load 6 more jobs
        renderJobListings();
        toggleLoadMoreButton();
    });
});

// Show Job Title Suggestions
function showJobTitleSuggestions(searchValue) {
    const suggestions = allJobs
        .filter(job => job.jobTitle.toLowerCase().includes(searchValue))
        .map(job => `<div class="job-title-suggestion">${job.jobTitle}</div>`)
        .join('');
    $('#jobTitleSuggestions').html(suggestions).toggle(suggestions.length > 0);
}

// Show Location Suggestions
function showLocationSuggestions(searchValue) {
    const suggestions = allJobs
        .filter(job => job.location.toLowerCase().includes(searchValue))
        .map(job => `<div class="location-suggestion">${job.location}</div>`)
        .join('');
    $('#locationSuggestions').html(suggestions).toggle(suggestions.length > 0);
}

// Render Job Listings
function renderJobListings() {
    const jobListContainer = $('#jobListContainer');
    jobListContainer.empty();

    // Filter and display jobs based on criteria
    const filteredJobs = allJobs.filter(job => {
        const matchesJobTitle = job.jobTitle.toLowerCase().includes(filters.jobTitle);
        const matchesLocation = job.location.toLowerCase().includes(filters.location);
        return matchesJobTitle && matchesLocation;
    });

	// Sort jobs in descending order by createdAt (newest first)
	   filteredJobs.sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt));
	
    // If no jobs match the filter, display a message
    if (filteredJobs.length === 0) {
        jobListContainer.append('<p>No jobs found matching your criteria.</p>');
        return;
    }

    // Get jobs to display based on the count
    const jobsToDisplay = filteredJobs.slice(0, jobsDisplayedCount);

    jobsToDisplay.forEach(job => {
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
}
/*function togglegridcontainer() {
    const hasSearchInput = filters.jobTitle || filters.location;
    $('#gridcontainer').toggle(!hasSearchInput); // Hide grid container if there's search input
}
// Show or Hide Job Categories
function toggleJobCategories() {
    const hasSearchInput = filters.jobTitle || filters.location;
    $('#jobcategories').toggle(!hasSearchInput); // Hide job categories when searching
}*/

// Show or Hide Grid Container


// Toggle Load More Button
function toggleLoadMoreButton() {
    const totalJobsCount = allJobs.filter(job => {
        const matchesJobTitle = job.jobTitle.toLowerCase().includes(filters.jobTitle);
        const matchesLocation = job.location.toLowerCase().includes(filters.location);
        return matchesJobTitle && matchesLocation;
    }).length;

    $('#loadMoreBtn').toggle(jobsDisplayedCount < totalJobsCount); // Show Load More if more jobs exist
}
