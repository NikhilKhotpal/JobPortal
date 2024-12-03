/**
 * 
 */
let allJobs = [];
        let filters = {
            jobType: [],
            experience: [],
            location: [],
            jobTitle: [] // Job Title filter
        };

        $(document).ready(function() {
            // Fetch jobs from server
            $.ajax({
                url: 'joblist', // Replace with your server URL for fetching jobs
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    allJobs = data;
                    renderFilters(); // Render filters
                    renderJobListings(); // Render job listings
                },
                error: function(xhr, status, error) {
                    console.error('Error fetching job list:', error);
                }
            });

            // Event listener for filter checkboxes
            $('input[type="checkbox"]').change(function() {
                filters.jobType = $('input[type="checkbox"]:checked').map(function() {
                    return this.value;
                }).get();
                renderJobListings(); // Re-render job listings when filters change
            });
        });

        function renderJobListings() {
            const jobListContainer = $('#jobListContainer');
            jobListContainer.empty();

            const filteredJobs = allJobs.filter(job => {
                return (filters.jobType.length === 0 || filters.jobType.includes(job.jobType));
                // You can add more filter conditions for experience, location, etc.
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
                            <a href="apply.jsp?id=${job.id}"><button class="card-btn">Apply Now</button></a>
                        </div>
                    </div>
                `;

                jobListContainer.append(card);
            });

            updateJobCount(filteredJobs.length);
        }

        function updateJobCount(count) {
            // Optionally display the count of jobs
            console.log(`Total jobs displayed: ${count}`);
        }

        function renderFilters() {
            // Implement logic to populate filters based on job data if necessary
        }