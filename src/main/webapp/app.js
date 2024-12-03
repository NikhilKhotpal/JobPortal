let allJobs = [];
     let filters = {
         jobType: [],
         experience: [],
         location: [],
         jobTitle: [] // Job Title filter
     };

     $(document).ready(function() {
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
     });

     function renderJobListings() {
         const jobListContainer = $('#jobListContainer');
         jobListContainer.empty();

         const filteredJobs = allJobs.filter(job => {
             return (filters.jobType.length === 0 || filters.jobType.includes(job.jobType)) &&
                    (filters.experience.length === 0 || filters.experience.includes(job.experience)) &&
                    (filters.location.length === 0 || filters.location.includes(job.location)) &&
                    (filters.jobTitle.length === 0 || filters.jobTitle.includes(job.jobTitle));
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
         $('#jobFoundCount').text(count);
     }

     function renderFilters() {
         const jobTypeSet = new Set();
         const experienceSet = new Set();
         const locationSet = new Set();

         allJobs.forEach(job => {
             jobTypeSet.add(job.jobType);
             experienceSet.add(job.experience);
             locationSet.add(job.location);
         });

         populateFilter('jobTypeFilter', jobTypeSet, 'jobType');
         populateFilter('experienceFilter', experienceSet, 'experience');
         populateFilter('locationFilter', locationSet, 'location');
     }

     function populateFilter(filterId, items, filterKey) {
         const filterContainer = $(`#${filterId}`);
         filterContainer.empty();

         items.forEach(item => {
             const filterHTML = `
                 <div class="filter-option">
                     <input type="checkbox" value="${item}" id="${filterKey}-${item}" />
                     <label for="${filterKey}-${item}">${item}</label>
                 </div>
             `;
             filterContainer.append(filterHTML);
         });

         filterContainer.on('change', `input[type="checkbox"]`, function() {
             const selectedValues = filterContainer.find('input[type="checkbox"]:checked').map(function() {
                 return this.value;
             }).get();

             filters[filterKey] = selectedValues;
             renderJobListings(); // Rerender job listings based on filters
         });
     }

     // Implement search functionality for job title
     $('#jobTitleSearch').on('input', function() {
         const searchValue = $(this).val().toLowerCase();
         filters.jobTitle = allJobs
             .filter(job => job.jobTitle.toLowerCase().includes(searchValue))
             .map(job => job.jobTitle);
         renderJobListings();
     });

     // Implement search functionality for location
     $('#locationSearch').on('input', function() {
         const searchValue = $(this).val().toLowerCase();
         filters.location = allJobs
             .filter(job => job.location.toLowerCase().includes(searchValue))
             .map(job => job.location);
         renderJobListings();
     });