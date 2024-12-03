package JopSeeker;

import java.sql.Date;
import java.sql.Timestamp;

public class Job {
    private int id;
    private String jobTitle;
    private String company;
    private String jobType;
    private String location;
    private String experience;
    private String salary;
    private String description;
    private Timestamp createdAt; // Assuming you have a createdAt field
    private String ccid; 
    public String getCcid() {
		return ccid;
	}

	public void setCcid(String ccid) {
		this.ccid = ccid;
	}

	private String email;
    private String password;
    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

	public Job() {
		// TODO Auto-generated constructor stub
	}

	// Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getCreatedAt() { // Ensure this method exists
        return createdAt;
    }

    public void setCreatedAt(Timestamp string) {
        this.createdAt = string;
    }

	public void setCreatedAt(Date date) {
		// TODO Auto-generated method stub
		
	}

	public void setCreatedAt(String string) {
		// TODO Auto-generated method stub
		
	}

	
}