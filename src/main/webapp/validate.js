let names = document.getElementById("name");
let email = document.getElementById("email");
let phoneNo = document.getElementById("phoneNo");
let petOption = document.getElementById("petOption");
let reason = document.getElementById("reason");
let agreement = document.getElementById("agreement");
let form = document.querySelector("form");



form.addEventListener("submit", (e)=>{
	const errors = [];
	
	//checks if name is empty
	if(names.value.trim()==="")
		errors.push("Please fill in your name!");
	
	//checks if email is empty
	if(email.value.trim()==="")
		errors.push("Please fill in your email!");
	
	//checks email is in correct format
	const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; //standard email pattern
	if(!emailPattern.test(email.value)) //test if user email match with standard pattern
		errors.push("Please ensure your email is in correct format!");
	
	//checks if phoneNo is empty
	if(phoneNo.value.trim()==="")
		errors.push("Please fill in your phone number!");
	
	//checks phoneNo only contains number
	const onlyNumbersPattern = /^[0-9]+$/;
	if(!onlyNumbersPattern.test(phoneNo.value))
		errors.push("Only numbers are allowed in phone number field!")
	
	//checks phoneNo legnth is within 10-11
	if(phoneNo.value.length < 10 || phoneNo.value.length > 11)
		errors.push("Only 10-11 digits are allowed for phone number!")
	
	//checks if housingTypeSelected is true
	const housingTypeSelected = document.querySelector('input[name="housingType"]:checked'); //checks if housing type is selected
	if(!housingTypeSelected)
		errors.push("Please select your housing type!");
	
	//checks if reason is empty
	if(reason.value.trim()==="")
		errors.push("Please fill in your reason!");
	
	//checks if agreement is checked
	if(!agreement.checked)
		errors.push("Please check the agreement!");
	
	if(errors.length > 0){
		e.preventDefault();
		alert(errors.join('\n'));
	}
	else{
		saveForm(); //keep the answers so the form can be refilled when the user comes back from the confirmation page
	}
})

//saves every field of the form into sessionStorage
function saveForm(){
	const data = {};
	form.querySelectorAll("input, select, textarea").forEach((field)=>{
		if(!field.name) return;
		if(field.type === "radio"){
			if(field.checked) data[field.name] = field.value;
		}
		else if(field.type === "checkbox"){
			data[field.name] = field.checked;
		}
		else{
			data[field.name] = field.value;
		}
	});
	sessionStorage.setItem("adoptionForm", JSON.stringify(data));
}

//refills the form with the saved answers when the page loads
function restoreForm(){
	const saved = sessionStorage.getItem("adoptionForm");
	if(!saved) return;
	const data = JSON.parse(saved);
	form.querySelectorAll("input, select, textarea").forEach((field)=>{
		if(!field.name || !(field.name in data)) return;
		if(field.type === "radio"){
			field.checked = (field.value === data[field.name]);
		}
		else if(field.type === "checkbox"){
			field.checked = data[field.name];
		}
		else{
			field.value = data[field.name];
		}
	});
}

restoreForm();
