$(document).ready(function() {
            // AJAX call to fetch job listings
            $.ajax({
                url: "joblist1", // Servlet URL
                type: "GET",
                dataType: "json",
                success: function(data) {
                	console.log(data);
                    // Populate the table with job listings
                    let tableBody = $("#jobListings tbody");
                    tableBody.empty(); // Clear existing data
                    $.each(data, function(index, company) {
                        let row = `<tr>
                            <td>${company.cid}</td>
                           <td>${company.company}</td>
                            <td>${company.cemail}</td>
                        </tr>`;
                        tableBody.append(row);
                    });
                },
                error: function(xhr, status, error) {
                    console.error("Error fetching job listings:", error);
                }
            });
        });