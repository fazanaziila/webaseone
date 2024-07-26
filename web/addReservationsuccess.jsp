<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Success</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <style>
        .swal2-popup {
            font-family: 'Arial', sans-serif;
            font-size: 16px
        }
        .swal2-title {
            font-family: 'Arial', sans-serif; 
            font-size: 24px;
        }
        .swal2-content {
            font-family: 'Arial', sans-serif; 
            font-size: 18px;
        }
        .swal2-confirm {
            font-family: 'Arial', sans-serif;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <%@include file="home.html" %>
    <!-- Sisipkan SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Success!',
            text: 'Reservation successfully submitted! For more info, please contact person.',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                // Redirect to a different page if needed
                window.location.href = 'home.html'; 
            }
        });
    </script>
</body>
</html>
