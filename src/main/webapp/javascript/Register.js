const container = document.getElementById("container");
const registerBtn = document.getElementById("register");

const loginBtn = document.getElementById("login");

registerBtn.addEventListener("click", () => {
    container.classList.add("active");
});

loginBtn.addEventListener("click", () => {
    container.classList.remove("active");
});

    function fillLoginForm() {
        // Get the values from the signup form
        const email = document.getElementById('signupEmail').value;
        const password = document.getElementById('signupPassword').value;

        // Fill the login form with the same email and password
        document.getElementById('loginEmail').value = email;
        document.getElementById('loginPassword').value = password;

        // Optionally, you can auto-switch to the login form view (if required)
        alert("Signup successful! Please log in.");
    }

