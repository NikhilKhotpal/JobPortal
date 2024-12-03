/**
 * 
 */
// Example job data
const jobData = [
    {
        id: 1,
        title: "Software Engineer",
        company: "Tech Company",
        description: "We are looking for a skilled Software Engineer to join our team.",
        tags: ["Java", "React", "Full-time"]
    },
    {
        id: 2,
        title: "Marketing Manager",
        company: "Marketing Agency",
        description: "Seeking a Marketing Manager to lead our marketing initiatives.",
        tags: ["Marketing", "Strategy", "Full-time"]
    },
    // Add more job entries as needed
];

// Function to fetch and display job listings
function fetchJobList(category = "") {
    const jobListings = document.getElementById('job-listings');
    jobListings.innerHTML = ""; // Clear existing job cards

    jobData.forEach(job => {
        // Optional: filter jobs based on category if provided
        if (category && !job.tags.includes(category)) return;

        const jobCard = document.createElement('div');
        jobCard.className = "job-card";
        jobCard.innerHTML = `
            <div class="job-title">${job.title}</div>
            <div class="company-name">${job.company}</div>
            <div class="job-meta">
                <span>${job.tags.join(", ")}</span>
            </div>
        `;
        jobCard.onclick = () => showJobDetail(job.id); // Set onclick event to show details
        jobListings.appendChild(jobCard);
    });
}

// Function to show job detail
function showJobDetail(jobId) {
    const job = jobData.find(j => j.id === jobId);
    const jobDescription = document.getElementById('job-description');

    jobDescription.innerHTML = `
        <h3>${job.title}</h3>
        <p>${job.description}</p>
    `;
}

// Initial call to load all job listings
fetchJobList();
