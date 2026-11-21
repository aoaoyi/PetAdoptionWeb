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

    <!-- Navigation Bar Home, Our Pets, Adopt, Contact-->
    <nav class="navbar">
        <div class="logo"><img src="image/logo.png" alt="LuckyPets Logo"><span>LuckyPets</span></div>
        <div class="nav-links">
            <a href="index.html"><img src="image/home.png" alt="Home"></a><!-- Go to Home -->
            <a href="list.html"><img src="image/pet.png" alt="Our Pets"></a><!-- Go to PetList -->
            <a href="form.html" class="active"><img src="image/adopt.png" alt="Adopt"></a><!-- Go to AdoptionForm-->
            <a href="#footer"><img src="image/contact.png" alt="Contact"></a><!-- Go to footer -->
        </div>
    </nav>
    <!-- Used to indicate the position for displaying the current page transition -->
    <div class="breadcrumbForForm">
        <a href="index.html">Home</a>
        <span>→</span>
        <a href="list.html">PetList</a>
        <span>→</span>
        <a href="detail.html">PetDetail</a>
        <span>→</span>
        <a href="form.html">AdoptionForm</a>
        <span>→</span>
        <a href="confirmation.jsp">AdoptionForm</a>
    </div>
</header>

	<div class="confirmation-container container-fluid ">
		
		<div class="thank-message container-fluid">
		
			<p class="thank-label">ADOPTION APPLICATION</p>
			
			<h1>Application Submitted Successfully!</h1>

    		<h2>Thank you, ${param.fullName} !</h2>

    		<p 
    			class="thank-description">We're so happy that you're considering giving ${param.pet} a loving home!
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