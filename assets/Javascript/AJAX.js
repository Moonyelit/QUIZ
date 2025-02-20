// Fonction d'initialisation
function initQuiz() {
  console.log("initQuiz() appelé");
}

// Gestion du clic sur une réponse
document.addEventListener("click", function (event) {
  const container = event.target.closest(".answer-container");
  if (!container) return;

  // Retire "selected" de toutes les réponses
  document
    .querySelectorAll(".answer-container")
    .forEach((c) => c.classList.remove("selected"));
  // Ajoute "selected" à la réponse cliquée
  container.classList.add("selected");

  // Coche l'input radio
  const radio = container.querySelector('input[type="radio"]');
  if (radio) radio.checked = true;
});

// Gestion du submit du formulaire
document.addEventListener("submit", function (event) {
  if (!event.target.matches("#question-form")) return; // Vérifie qu'on soumet le bon formulaire
  event.preventDefault();

  console.log("Formulaire soumis via AJAX !");

  const form = event.target;
  const formData = new FormData(form);
  const questionId = formData.get("question_id");
  const answerId = formData.get("answer");
  const index = parseInt(formData.get("index")) + 1;

  if (!answerId) {
    alert("Veuillez sélectionner une réponse !");
    return;
  }

  // Forcer AJAX dès la première soumission
  fetch(`/question/${quizSlug}/check`, {
    method: "POST",
    body: JSON.stringify({ question_id: questionId, answer_id: answerId }),
    headers: { "Content-Type": "application/json" },
  })
    .then((response) => response.json())
    .then((data) => {
      console.log("Réponse reçue :", data);

      const selectedContainer = document.querySelector(
        `.answer-container[data-answer-id="${answerId}"]`
      );
      if (selectedContainer) {
        selectedContainer.classList.add(data.correct ? "true" : "false");
      }


      setTimeout(() => {
        if (index < totalQuestions) {
            fetch(`/question/${quizSlug}/next?index=${index}`, { method: 'GET' })
            .then(response => response.text())
            .then(html => {
                document.getElementById('quiz-container').innerHTML = html;
    
                // Supprime toutes les animations qui pourraient modifier la position
                document.querySelectorAll('.animate-slide-down, .animate-slide-up').forEach(el => {
                    el.classList.remove('animate-slide-down', 'animate-slide-up');
                });
    
                // Forcer la position après suppression des classes
                document.querySelector('section').scrollIntoView({ behavior: "instant", block: "start" });
            });
        } else {
            console.log("Fin du quiz, redirection vers résultats...");
            window.location.href = `/question/${quizSlug}/finish`; 
        }
    }, 1000);
    
    
    })
    
    .catch((error) => console.error("Erreur AJAX :", error));
});

// Écouteur DOM
if (window.Turbo) {
  document.addEventListener("turbo:load", initQuiz);
} else {
  document.addEventListener("DOMContentLoaded", initQuiz);
}
