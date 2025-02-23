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

// Déclare une variable globale pour le score
let playerScore = 0;

document.addEventListener("submit", function (event) {
  if (!event.target.matches("#question-form")) return;
  event.preventDefault();

  const form = event.target;
  const formData = new FormData(form);
  const questionId = formData.get("question_id");
  const answerId = formData.get("answer");
  const index = parseInt(formData.get("index")) + 1;

  if (!answerId) {
    alert("Veuillez sélectionner une réponse !");
    return;
  }

  fetch(`/question/${quizSlug}/check`, {
    method: "POST",
    body: JSON.stringify({ question_id: questionId, answer_id: answerId }),
    headers: { "Content-Type": "application/json" },
  })
    .then((response) => response.json())
    .then((data) => {
      // Ajoute une classe pour marquer la bonne/mauvaise réponse
      const selectedContainer = document.querySelector(
        `.answer-container[data-answer-id="${answerId}"]`
      );
      if (selectedContainer) {
        selectedContainer.classList.add(data.correct ? "true" : "false");
      }

      // Si la réponse est correcte, incrémente le score et met à jour l'affichage
      if (data.correct) {
        playerScore += 10;
        document.getElementById("score").textContent = `Votre score : ${playerScore} pts`;
      }

      setTimeout(() => {
        if (index < totalQuestions) {
            fetch(`/question/${quizSlug}/next?index=${index}`, { method: 'GET' })
            .then(response => response.text())
            .then(html => {
                document.getElementById('quiz-container').innerHTML = html;
      
                // Réafficher le score avec la variable globale
                document.getElementById('score').textContent = `Votre score : ${playerScore} pts`;
      
                // Supprime les classes d'animation éventuelles
                document.querySelectorAll('.animate-slide-down, .animate-slide-up').forEach(el => {
                    el.classList.remove('animate-slide-down', 'animate-slide-up');
                });
                document.querySelector('section').scrollIntoView({ behavior: "instant", block: "start" });
            });
        } else {
            console.log("Fin du quiz, redirection vers résultats...");
            window.location.href = `/question/${quizSlug}/finish?score=${playerScore}`; 
        }
      }, 1000);
      
    })
    .catch((error) => console.error("Erreur AJAX :", error));
});
