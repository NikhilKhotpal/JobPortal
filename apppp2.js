let jobs = []; // Store jobs fetched from the server
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
    return `
	
        <div class="job-card" onclick="showJobDetail(${job.id})">
            <h2 class="job-title">${job.jobTitle}</h2>
            <div class="company-name">${job.company}</div>
            <div class="job-meta">
                <span>📍 ${job.location}</span>
                <span>💼 ${job.jobType}</span>
                <span>⏰ ${job.createdAt}</span>
            </div>
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
        <a href="apply.jsp?id=${job.id}"><button class="card-btn">Apply Now</button></a>
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
