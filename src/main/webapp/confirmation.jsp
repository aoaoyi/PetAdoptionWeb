<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adoption Confirmation</title>
<link rel="stylesheet" href="header.css">
<link rel="stylesheet" href="footer.css">
<link rel="stylesheet" href="confirmation.css">
</head>
<body>
	<header>
		<!-- Navigation Bar Home, Our Pets, Adopt, Contact-->
		<nav class="navbar">
			<div class="logo">
				<img src="image/logo.jpg" alt="LuckyPets Logo"><span>LuckyPets</span>
			</div>
			<div class="nav-links">
				<a href="index.html">Home</a>
				<!-- Go to Home -->
				<a href="list.html">OurPets</a>
				<!-- Go to PetList -->
				<a href="form.html">Adopt</a>
				<!-- Go to AdoptionForm-->
				<a href="#footer">Contact</a>
				<!-- Go to footer -->
			</div>
		</nav>
		<!-- Used to indicate the position for displaying the current page transition -->
		<div class="breadcrumbForForm">
			<a href="index.html">Home</a> <span>→</span> <a href="list.html">PetList</a>
			<span>→</span> <a href="detail.html">PetDetail</a> <span>→</span> <a
				href="form.html">AdoptionForm</a>
		</div>
	</header>


	<div class="confirmation-container">
		
		<div class="thank-message">
		
			<p class="thank-label">ADOPTION APPLICATION</p>
			
			<h1>Application Submitted Successfully!</h1>

    		<h2>Thank you, ${requestScope.fullName}!</h2>

    		<p 
    			class="thank-description">We're so happy that you're considering giving ${requestScope.pet} a loving home!
    		</p>

		</div>


		<h2>Your Application Details</h2>

		<table class="application-details">
			<tr>
				<th>Full Name</th>
				<td>${requestScope.fullName}</td>
			</tr>

			<tr>
				<th>Email</th>
				<td>${requestScope.email}</td>
			</tr>

			<tr>
				<th>Phone Number</th>
				<td>${requestScope.phone}</td>
			</tr>

			<tr>
				<th>Pet of Interest</th>
				<td>${requestScope.pet}</td>
			</tr>

			<tr>
				<th>Housing Type</th>
				<td>${requestScope.housing}</td>
			</tr>

			<tr>
				<th>Reason for Adoption</th>
				<td>${requestScope.reason}</td>
			</tr>

			<tr>
				<th>Home Visit Agreement</th>
				<td>${empty requestScope.agreement ? 'Not Agreed' : requestScope.agreement}</td>
			</tr>
		</table>


		<a href="index.html" class="back-home">Back to Home</a>

	</div>


	<footer id="footer">
		<p>Contact Us: Lucky Pets Adoption</p>
		<p>Email: luckypets@gmail.com</p>
		<p>Phone: +60 123456789</p>

		<p>© Lucky Pets, 2026. All Rights Reserved.</p>
	</footer>
</body>
</html>