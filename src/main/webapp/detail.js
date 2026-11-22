// Resize element to adapt webpage
function resizePetDetail() {
	const petDetail=document.querySelector(".pet-detail[style*='display: block']");
	
	if(!petDetail) return;
    const originalWidth=1400;
	const originalHeight=petDetail.offsetHeight;
    const availableWidth=window.innerWidth*0.95;
    const scale=Math.min(1, availableWidth/originalWidth);

    petDetail.style.transform="scale("+scale+")";
    petDetail.style.transformOrigin="top center";
	petDetail.style.marginBottom="-"+originalHeight*(1-scale)+"px";
}

window.addEventListener("resize", resizePetDetail);

const petIds=["pet1", "pet2", "pet3", "pet4", "pet5", "pet6"];
let currentIndex=petIds.indexOf(new URLSearchParams(window.location.search).get("id"));

// If no pet ID is provided by URL, show pet1
if(currentIndex===-1) {
    currentIndex=0;
}

function showPet(index) {
    currentIndex=(index+petIds.length)%petIds.length; //
    const petId=petIds[currentIndex];
	
	// Show the previously viewed pet
	if(petId) {
		sessionStorage.setItem("lastPetId", petId);
	}
	
	// Store current scroll position
	const currentScroll=window.scrollY;
	
    // Hide all pets
    document.querySelectorAll(".pet-detail").forEach(pet => {
        pet.style.display="none";
    });

    // Show selected pet
    const selectedPet=document.getElementById(petId);
    if(selectedPet) {
        selectedPet.style.display="block";
		resizePetDetail();
		
		const grid=selectedPet.querySelector(".pet-main-grid");
		const navigation=document.querySelector(".pet-navigation");
		grid.appendChild(navigation);
		
		const adoption=selectedPet.querySelector(".adoption-button");
		const adoptButton=document.querySelector(".adopt-me");
		adoption.appendChild(adoptButton);
		
        // Display title of the corresponding pet's detail
        const petName=selectedPet.querySelector(".pet-name");
        if(petName) {
            document.title=petName.textContent.trim()+"'s Detail";
        }
    }

    // Update URL without reloading the page
    const url=new URL(window.location.href);
    url.searchParams.set("id", petId);
    history.replaceState(null, "", url);
	
	// Display current scroll position
	window.scrollTo(0, currentScroll);
}

// Show the other pet without return to pet list page
document.getElementById("prev-pet").addEventListener("click", () => {
    showPet(currentIndex-1);
});

document.getElementById("next-pet").addEventListener("click", () => {
    showPet(currentIndex+1);
});

document.addEventListener("keydown", (event) => {
    if(event.key==="ArrowLeft") {
		showPet(currentIndex-1);
	}
	if(event.key==="ArrowRight") {
		showPet(currentIndex+1);
	}
});

// Display the pet
showPet(currentIndex);

// Animation for Care Needs and Adoption Fee
const revealElements=document.querySelectorAll(".scroll-reveal");

const observer=new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add("show");
            observer.unobserve(entry.target);
        }
    });
}, {threshold: 0.2});

revealElements.forEach(element => {
    observer.observe(element);
});