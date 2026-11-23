<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adoption Confirmation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="header.css">
<link rel="stylesheet" href="footer.css">
<link rel="stylesheet" href="confirmation.css">
<link rel="stylesheet" href="adaptScreen.css">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid px-lg-5">
            <!-- Logo -->
            <a class="navbar-brand logo" href="index.html">
                <img src="image/logo2.png" alt="LuckyPets Logo">
                <span>LuckyPets</span>
            </a>

            <!-- Hamburger Button -->
            <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#mainNavbar"
                aria-controls="mainNavbar"
                aria-expanded="false"
                aria-label="Toggle navigation">

                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navigation Links -->
            <div class="collapse navbar-collapse" id="mainNavbar">
                <div class="nav-links ms-auto">
                    <a href="index.html">Home</a>
                    <a href="list.html">Our Pets</a>
                    <a href="form.html">Adopt</a>
                    <a href="#footer">Contact</a>
                </div>
            </div>
            
        </div>
    </nav>

<!-- Breadcrumb -->
<nav class="breadcrumbForForm navbar navbar-expand-lg">
    <div class="container-fluid px-lg-5">

        <!-- Mobile Toggle -->
        <button class="breadcrumb-toggler d-lg-none"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#breadcrumbMenu"
            aria-controls="breadcrumbMenu"
            aria-expanded="false"
            aria-label="Toggle breadcrumb">

            <!-- SVG Icon -->
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
  			<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
			</svg>

        </button>

        <!-- Breadcrumb Links -->
        <div class="collapse navbar-collapse" id="breadcrumbMenu">
            <div class="breadcrumb-links">
                <a href="index.html">Home</a>
                <span>&gt;</span>
                <a href="list.html">Pet List</a>
                <span>&gt;</span>
                <a href="detail.html">Pet Detail</a>
                <span>&gt;</span>
                <a href="form.html">Adoption Form</a>
                <span>&gt;</span>
                <a href="confirmation.jsp">Confirmation</a>
            </div>

        </div>
    </div>
</nav>

</header>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

	<div class="confirmation-container">
		
		<div class="thank-message">
		
			<p class="thank-label">ADOPTION APPLICATION</p>
			
			<h1>Application Submitted Successfully!</h1>

    		<h2>Thank you, ${param.fullName} !</h2>

    		<p 
    			class="thank-description">We're so happy that you're considering giving ${param.petOption} a loving home!
    		</p>

		</div>


		<h2>Your Application Details</h2>
	<div class="table-responsive">
		<table class="application-details">
			<tr>
				<th>Full Name</th>
				<td>${param.fullName}</td>
			</tr>

			<tr>
				<th>Email</th>
				<td>${param.email}</td>
			</tr>

			<tr>
				<th>Phone Number</th>
				<td>${param.phone}</td>
			</tr>

			<tr>
				<th>Pet of Interest</th>
				<td>${param.petOption}</td>
			</tr>

			<tr>
				<th>Housing Type</th>
				<td>${param.housingType}</td>
			</tr>

			<tr>
				<th>Reason for Adoption</th>
				<td>${param.reason}</td>
			</tr>

			<tr>
				<th>Home Visit Agreement</th>
				<td>${empty param.agreement ? 'Not Agreed' : param.agreement}</td>
			</tr>
		</table>


		<a href="index.html" class="back-home">Back to Home</a>
	</div>
	</div>


	<footer id="footer">
		<p>Contact Us: Lucky Pets Adoption</p>
		<p>Email: luckypets@gmail.com</p>
		<p>Phone: +60 123456789</p>

		<p>© Lucky Pets, 2026. All Rights Reserved.</p>
	</footer>
</body>
</html>
