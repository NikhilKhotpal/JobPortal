let allJobs = [];
let filters = {
    jobType: [],
    experience: [],
    location: [],
    jobTitle: [] // Added jobTitle filter
};

$(document).ready(function() {
    $.ajax({
        url: 'joblist', // Replace with your server URL for fetching jobs
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            allJobs = data;
            renderFilters(); // Renders filters including job titles
            renderJobListings(); // Renders the job listings
        },
        error: function(xhr, status, error) {
            console.error('Error fetching job list:', error);
        }
    });
});

// Function to render job listings based on filters
function renderJobListings() {
    const jobListContainer = $('#jobListContainer');
    jobListContainer.empty();

    const filteredJobs = allJobs.filter(job => {
        return (filters.jobType.length === 0 || filters.jobType.includes(job.jobType)) &&
               (filters.experience.length === 0 || filters.experience.includes(job.experience)) &&
               (filters.location.length === 0 || filters.location.includes(job.location)) &&
               (filters.jobTitle.length === 0 || filters.jobTitle.includes(job.jobTitle)); // Added jobTitle filter
    });

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
					<a href="Register.jsp"><button class="card-btn">Apply Now</button></a>
                </div>
            </div>
        `;

        jobListContainer.append(card);
    });

    updateJobCount(filteredJobs.length);
}

function updateJobCount(count) {
    $('#jobFoundCount').text(count);
}

// Function to render filters including job titles
function renderFilters() {
    const jobTypes = [...new Set(allJobs.map(job => job.jobType))];
    const experiences = [...new Set(allJobs.map(job => job.experience))];
    const locations = [...new Set(allJobs.map(job => job.location))];
    const jobTitles = [...new Set(allJobs.map(job => job.jobTitle))]; // Added job titles

    renderFilterOptions('jobTypeFilter', jobTypes, 'jobType');
    renderFilterOptions('experienceFilter', experiences, 'experience');
    renderFilterOptions('locationFilter', locations, 'location');
    renderFilterOptions('jobTitleFilter', jobTitles, 'jobTitle'); // Added job title filter rendering
}

function renderFilterOptions(containerId, options, filterType) {
    const container = $(`#${containerId}`);
    container.empty();

    options.forEach(option => {
        const filterOption = 
            `<div class="filter-option">
                <input type="checkbox" id="${filterType}-${option}" name="${filterType}" value="${option}">
                <label for="${filterType}-${option}">${option}</label>
            </div>
        `;
        container.append(filterOption);
    });
}

// Event listener for filter changes
$(document).on('change', '.filter-options input[type="checkbox"]', function() {
    const { name, value, checked } = this;
    if (checked) {
        filters[name].push(value);
    } else {
        filters[name] = filters[name].filter(item => item !== value);
    }
    renderJobListings(); // Re-render job listings after filter change
});

// Event listener for Apply button
$(document).on('click', '.card-btn', function() {
    const jobId = $(this).closest('.card').data('job-id'); // Get job ID
    console.log('Job ID:', jobId); // Log job ID to debug
    window.location.href = `apply.jsp?id=${jobId}`; 
});