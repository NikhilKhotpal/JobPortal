let jobs = []; // Store jobs fetched from the server
let appliedJobs = []; // Array to track applied job IDs
let filters = {}; // Store selected filters

// Fetch jobs from the server
function fetchJobs() {
    $.ajax({
        url: 'joblist', // Replace with actual URL
        method: 'GET',
        dataType: 'json',
        success: function(data) {
            jobs = data;
            displayJobListings(jobs); // Display all jobs initially
            populateFilters(); // Populate filter options after fetching jobs
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.error('Error fetching jobs:', textStatus, errorThrown);
        }
    });
}

// Display jobs based on the provided list
function displayJobListings(jobList) {
    const jobListingsHtml = jobList.map(createJobCard).join('');
    document.getElementById('jobListings').innerHTML = jobListingsHtml;
}

// Create HTML for each job card
function createJobCard(job) {
    const applyButton = appliedJobs.includes(job.id) 
        ? `<button class="card-btn" disabled>Already Applied</button>` 
        : `<button class="card-btn apply-btn" onclick="applyForJob(${job.id})">Apply Now</button>`;
    
    return `
        <div class="job-card" onclick="showJobDetail(${job.id})">
            <h2 class="job-title">${job.jobTitle}</h2>
            <div class="company-name">${job.company}</div>
            <div class="job-meta">
                <span>📍 ${job.location}</span>
                <span>💼 ${job.jobType}</span>
                <span>⏰ ${job.createdAt}</span>
            </div>
            ${applyButton}
        </div>
    `;
}

// Show job details
function showJobDetail(jobId) {
    const job = jobs.find(j => j.id === jobId);
    if (!job) return;

    const detailHtml = `
        <h1>${job.jobTitle}</h1>
        <p>Company: ${job.company}</p>
        <p>Location: ${job.location}</p>
        <p>Type: ${job.jobType}</p>
        <p>Description: ${job.description || 'No description available.'}</p>
        ${appliedJobs.includes(job.id) 
            ? '<button class="card-btn" disabled>Already Applied</button>' 
            : `			<div class="buttonWrapper" id="applyButtonWrapper-${job.id}">
			                  <a href="apply.jsp?id=${job.id}"><button class="card-btn">Apply Now</button></a>
			              </div>`}
						  <hr>
    `;
    document.getElementById('jobDetail').innerHTML = detailHtml;
}

// Filter jobs based on search input and selected category
function filterJobs() {
    const searchQuery = document.getElementById('searchInput').value.toLowerCase();

    const filteredJobs = jobs.filter(job => {
        // Check if the job matches selected filters
        const matchesCategory = Object.keys(filters).every(filterKey => {
            if (filters[filterKey].length > 0) {
                return filters[filterKey].includes(job[filterKey]);
            }
            return true;
        });

        // Check if the job matches the search query
        const matchesSearch = job.jobTitle.toLowerCase().includes(searchQuery) || job.location.toLowerCase().includes(searchQuery);

        return matchesCategory && matchesSearch;
    });

    displayJobListings(filteredJobs);
}

// Change the style of the selected section card
function setActiveCard(selectedCard) {
    $('.section-card').removeClass('active');
    $(selectedCard).addClass('active');
}

$(document).ready(function() {
    fetchJobs();

    // Dynamic filter when typing in the search box
    $('#searchInput').on('input', function() {
        filterJobs(); // Filter based on text input
    });

    // Event listener for category filters
    $('.section-card').on('click', function() {
        const category = $(this).data('category');
        filterJobs(category); // Filter jobs based on category
        setActiveCard(this);
    });
});

// Populate the filters dynamically
function populateFilter(filterId, items, filterKey) {
    const filterContainer = $(`#${filterId}`);
    filterContainer.empty();

    items.forEach(item => {
        const filterHTML = `
            <div class="new">
                <div class="new2">        
                    <input type="checkbox" value="${item}" id="${filterKey}-${item}" />
                    <label for="${filterKey}-${item}">${item}</label>
					
                </div>
            </div>
        `;
		file:///C:/Users/Nikhil/OneDrive/Desktop/Direct%20Hire.svg
        filterContainer.append(filterHTML);
    });

    // Attach change event to filter checkboxes
    filterContainer.on('change', `input[type="checkbox"]`, function() {
        const selectedValues = filterContainer.find('input[type="checkbox"]:checked').map(function() {
            return this.value;
        }).get();

        filters[filterKey] = selectedValues; // Update the selected filters
        filterJobs(); // Re-filter and display jobs based on selected filters
    });
}

// Populate filter categories like job types, locations, etc.
function populateFilters() {
    const jobTypes = [...new Set(jobs.map(job => job.jobType))]; // Get unique job types
    const locations = [...new Set(jobs.map(job => job.location))]; // Get unique locations

    // Populate filters
    populateFilter('jobTypeFilter', jobTypes, 'jobType');
    populateFilter('locationFilter', locations, 'location');
}

// Apply for a job
function applyForJob(jobId) {
    // Check if the user has already applied for this job
	const userId = getUserId(); // Function to get the current user's ID

    if (appliedJobs.includes(jobId)) {
        alert('You have already applied for this job.');
        return;
    }

    // Simulate sending a request to apply for the job
    $.ajax({
        url: `apply.jsp?id=${jobId}`, // Replace with actual endpoint
        method: 'POST',
        success: function(response) {
            // If the application is successful, add job ID to the appliedJobs array
            appliedJobs.push(jobId);
            
            alert('You have successfully applied for this job!');
            
            // Hide the button wrapper after applying
            $(`#applyButtonWrapper-${jobId}`).hide();
            
            // Re-render the job listings to update the Apply Now button
            displayJobListings(jobs);
        },
        error: function() {
            console.error('Error applying for job');
        }
    });
}
