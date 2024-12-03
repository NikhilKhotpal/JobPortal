package JopSeeker; // Adjust the package name as needed

public class Company {
    private int cid; // Company ID
    private String company; // Name of the company
    private String cemail; // Company's email
    private String password; // Company's password (if needed)

    // Constructor
   
    // Getters and Setters
    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCompany() {
        return company;
    }

    public void setCompanyName(String company) {
        this.company = company;
    }

   

    public String getCemail() {
		return cemail;
	}

	public void setCemail(String cemail) {
		this.cemail = cemail;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Company{" +
                "cid=" + cid +
                ", companyName='" + company + '\'' +
                ", email='" + cemail + '\'' +
                '}';
    }
}
