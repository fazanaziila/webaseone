let menu = document.querySelector('#menu-bars');
let navbar = document.querySelector('.navbar');

menu.onclick = () => {
    menu.classList.toggle('fa-times');
    navbar.classList.toggle('active');
}



function showError(message) {
    Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: message,
    });
}

function showSuccess(message) {
    Swal.fire({
        icon: 'success',
        title: 'Success!',
        text: message,
    });
}

function validateName(inputId, errorMessageEmpty, errorMessageInvalid) {
    let name = document.getElementById(inputId).value;

    if (name == "") {
        showError(errorMessageEmpty);
        return false;
    }

    let regex = /^[a-zA-Z ]+$/;
    if (!regex.test(name)) {
        showError(errorMessageInvalid);
        return false;
    }

    return true;
}

function validateTelp() {
    let telp = document.getElementById('number-input').value;
    telp = telp.replace(/\D/g, '');
    if (telp == "") {
        showError("Number can't be Empty");
        return false;
    }

    let pattern = /^\d{12,13}$/;
    if (!pattern.test(telp)) {
        showError("Number must be 12 or 13 digits");
        return false;
    }

    return true;
}

function validateEmail() {
    let email = document.getElementById('email-input').value;

    if (email == "") {
        showError("Email can't be Empty");
        return false;
    }

    let regex = /^[a-zA-Z0-9._-]+@gmail\.com$/;
    if (!regex.test(email)) {
        showError("Email input must have @gmail.com");
        return false;
    }

    return true;
}

function validatePeople() {
    let people = document.getElementById('people-input').value;

    if (people == "") {
        showError("Enter the valid number");
        return false;
    }

    if (isNaN(people)) {
        showError("Must be a Number");
        return false;
    }

    if (people <= 0 || people > 6) {
        showError("Number of people must be more than 0 and less than 6");
        return false;
    }

    return true;
}

function validateDate() {
    const datePicker = document.getElementById('datePicker');


    datePicker.min = '2024-07-13';
    datePicker.max = '2024-07-14';

    return true;
}

function validateForm() {
    const isValidName = validateName('first-input', "Name can't be Empty", "Name should be Letter");
    const isValidTelp = validateTelp();
    const isValidEmail = validateEmail();
    const isValidPeople = validatePeople();
    const isValidDate = validateDate();

    return isValidName && isValidTelp && isValidEmail && isValidPeople && isValidDate;
}

document.getElementById('book-now').addEventListener('submit', function(event) {
    if (!validateForm()) {
        event.preventDefault();
        showError('Please fix the errors in the form.');
    }
});

function handleFormSubmission() {
    showSuccess('Reservation successfully submitted!');
    document.getElementById('first-input').value = "";
    document.getElementById('number-input').value = "";
    document.getElementById('email-input').value = "";
    document.getElementById('people-input').value = "";
    document.getElementById('datePicker').value = "";
}