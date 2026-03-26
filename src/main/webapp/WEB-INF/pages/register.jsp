<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>

<style>
body {
	font-family: Arial;
	background: linear-gradient(to right, #667eea, #764ba2);
}

.container {
	width: 500px;
	margin: 50px auto;
	background: white;
	padding: 30px;
	border-radius: 10px;
}

/* TEXT INPUTS */
input[type="text"], input[type="date"], select, textarea {
	width: 100%;
	padding: 8px;
	margin: 8px 0;
}

/* FIX RADIO */
input[type="radio"], input[type="checkbox"] {
	width: auto;
	margin-right: 5px;
}

/* BUTTON */
button {
	width: 100%;
	padding: 10px;
	background: #667eea;
	color: white;
	border: none;
}
</style>

</head>

<body>

	<div class="container">

		<h2>Registration Form</h2>

		<form action="${pageContext.request.contextPath}/save" method="post">

			<input type="hidden" name="id" value="${student.id}" /> First Name:
			<input type="text" name="firstName" value="${student.firstName}"
				required /> Last Name: <input type="text" name="lastName"
				value="${student.lastName}" required /> DOB: <input type="date"
				name="dob" value="${student.dob}" />

			<!-- ✅ GENDER FIX -->
			<div>
				<label>Gender:</label><br> <input type="radio" name="gender"
					value="Male" ${student.gender eq 'Male' ? 'checked' : ''} /> Male
				<input type="radio" name="gender" value="Female"
					${student.gender eq 'Female' ? 'checked' : ''} /> Female <input
					type="radio" name="gender" value="Other"
					${student.gender eq 'Other' ? 'checked' : ''} /> Other
			</div>

			<br> Address:
			<textarea name="address">${student.address}</textarea>

			<!-- STATE -->
			State: <select name="state" id="state" onchange="updateCentres()">
				<option value="">--Select--</option>
				<option value="Maharashtra"
					${student.state eq 'Maharashtra' ? 'selected' : ''}>Maharashtra</option>
				<option value="Delhi" ${student.state eq 'Delhi' ? 'selected' : ''}>Delhi</option>
				<option value="Karnataka"
					${student.state eq 'Karnataka' ? 'selected' : ''}>Karnataka</option>
			</select>

			<!-- CENTRE -->
			<div id="centreContainer"></div>

			Feedback:
			<textarea name="feedback">${student.feedback}</textarea>

			Accept Terms: <input type="checkbox" name="accept"
				${student.accept ? 'checked' : ''} /> <br> <br>

			<button type="submit">Submit</button>

		</form>

		<div style="text-align: center; margin-top: 20px;">
			<a href="${pageContext.request.contextPath}/">⬅ Back to Home</a>
		</div>

	</div>

	<!-- SCRIPT -->
	<script>

function updateCentres(selectedCentre = "") {

    let state = document.getElementById("state").value;
    let centreDiv = document.getElementById("centreContainer");

    let centres = [];

    if(state === "Maharashtra") {
        centres = ["Pune", "Mumbai", "Nagpur", "Nashik"];
    } 
    else if(state === "Delhi") {
        centres = ["Dwarka", "Rohini", "Saket", "Karol Bagh"];
    } 
    else if(state === "Karnataka") {
        centres = ["Bangalore", "Mysore", "Hubli", "Mangalore"];
    }

    let html = "<div><label>Centre:</label><br>";

    centres.forEach(c => {
        let checked = (c === selectedCentre) ? "checked" : "";
        html += `<input type="radio" name="centre" value="${c}" ${checked}> ${c}<br>`;
    });

    html += "</div>";

    centreDiv.innerHTML = html;
}

/* LOAD EDIT MODE */
window.onload = function() {
    let selectedCentre = "${student.centre}";
    updateCentres(selectedCentre);
};

</script>
	<script>

function updateCentres() {

    var state = document.getElementById("state").value;
    var centreDiv = document.getElementById("centreContainer");

    console.log("Selected State:", state); // DEBUG

    var centres = [];

    if(state === "Maharashtra") {
        centres = ["Pune", "Mumbai", "Nagpur", "Nashik"];
    } 
    else if(state === "Delhi") {
        centres = ["Dwarka", "Rohini", "Saket", "Karol Bagh"];
    } 
    else if(state === "Karnataka") {
        centres = ["Bangalore", "Mysore", "Hubli", "Mangalore"];
    } 
    else {
        centreDiv.innerHTML = "";
        return;
    }

    var html = "<label>Centre:</label><br>";

    for(var i = 0; i < centres.length; i++) {
        html += '<input type="radio" name="centre" value="' + centres[i] + '"> ' + centres[i] + '<br>';
    }

    centreDiv.innerHTML = html;
}

// 🔥 FORCE LOAD WHEN PAGE OPENS
window.onload = function() {
    updateCentres();
};

</script>
</body>
</html>