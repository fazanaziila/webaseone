function validateForm() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirm-password").value;
    if (password !== confirmPassword) {
        $('#passwordMismatchModal').modal('show');
        return false;
    }
    return true;
}

window.onload = function() {
    var registrationStatus = '<%= request.getAttribute("registrationStatus") %>';
    if (registrationStatus === 'success') {
        $('#successModal').modal('show');
    } else if (registrationStatus === 'emailUsed') {
        $('#errorModal').modal('show');
    }
};

$(document).ready(function() {
    $('.form-styling').on('focus', function() {
        $('.frame').addClass('active');
    });

    $('.form-styling').on('blur', function() {
        if (!$(this).val()) {
            $('.frame').removeClass('active');
        }
    });

    $('form').on('submit', function() {
        $('.frame').addClass('active');
    });
});