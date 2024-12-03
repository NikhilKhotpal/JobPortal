/**
 * 
 */
// Ensure jQuery is ready before attaching event listeners
$(document).ready(function() {
    // Click event for each section card
    $('.section-card').click(function() {
        // Remove 'active' class from all section cards
        $('.section-card').removeClass('active');
        
        // Add 'active' class to the clicked section card
        $(this).addClass('active');
        
        // You can also display a message or perform another action if needed
        console.log("Selected section:", $(this).text().trim());
        
        // No filtering or changes to the job listings occur here
    });
});

// Fetch jobs and display them as before
fetchJobs();
