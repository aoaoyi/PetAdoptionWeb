// ===== Pet list filters =====

// 1. Get elements
const speciesButtons = document.querySelectorAll(".species-btn");
const ageFilter = document.getElementById("age-filter");
const genderFilter = document.getElementById("gender-filter");
const vaccineFilter = document.getElementById("vaccine-filter");
const resetButton = document.getElementById("reset-btn");
const resultCount = document.getElementById("result-count");
const cards = document.querySelectorAll(".pet-card");

let selectedSpecies = "all";   // no species selected at the beginning

// 2. Check every card against all conditions
function applyFilters() {
    const age = ageFilter.value;
    const gender = genderFilter.value;
    const vaccinated = vaccineFilter.value;
    let shown = 0;

    cards.forEach(card => {
        const match =
            (selectedSpecies === "all" || card.dataset.species === selectedSpecies) &&
            (age === "all" || card.dataset.age === age) &&
            (gender === "all" || card.dataset.gender === gender) &&
            (vaccinated === "all" || card.dataset.vaccinated === vaccinated);

        card.style.display = match ? "" : "none";
        if (match) shown++;
    });

    // Highlight dropdowns that are not "All"
    [ageFilter, genderFilter, vaccineFilter].forEach(select => {
        select.classList.toggle("selected", select.value !== "all");
    });

    resultCount.textContent = shown === 0
        ? "No pets match your filters. Try changing them!"
        : `Showing ${shown} pet(s)`;
}

// 3. Species buttons: click to select, click again to cancel
speciesButtons.forEach(button => {
    button.addEventListener("click", () => {
        const species = button.dataset.species;

        speciesButtons.forEach(b => b.classList.remove("active"));

        if (selectedSpecies === species) {
            selectedSpecies = "all";          // clicked the same one -> cancel
        } else {
            selectedSpecies = species;
            button.classList.add("active");
        }
        applyFilters();
    });
});

// 4. Dropdowns: filter whenever the choice changes
ageFilter.addEventListener("change", applyFilters);
genderFilter.addEventListener("change", applyFilters);
vaccineFilter.addEventListener("change", applyFilters);

// 5. All button: clear every condition
resetButton.addEventListener("click", () => {
    selectedSpecies = "all";
    speciesButtons.forEach(b => b.classList.remove("active"));
    ageFilter.value = "all";
    genderFilter.value = "all";
    vaccineFilter.value = "all";
    applyFilters();
});

applyFilters();   // show the count when the page first loads
