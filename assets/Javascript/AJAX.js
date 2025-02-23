// Fonction d'initialisation (optionnelle)
function initQuiz() {
  console.log("initQuiz() appelé");
}

// Gestion du clic sur une réponse
document.addEventListener("click", function (event) {
  const container = event.target.closest(".answer-container");
  if (!container) return;

  // Retire la classe "selected" de toutes les réponses
  document.querySelectorAll(".answer-container").forEach((c) => c.classList.remove("selected"));
  // Ajoute "selected" à la réponse cliquée
  container.classList.add("selected");

  // Coche l'input radio correspondant
  const radio = container.querySelector('input[type="radio"]');
  if (radio) radio.checked = true;
});

// Variable globale pour le score
let playerScore = 0;

document.addEventListener("submit", function (event) {
  if (!event.target.matches("#question-form")) return;
  event.preventDefault();

  const form = event.target;
  const formData = new FormData(form);
  const questionId = formData.get("question_id");
  let answerId = formData.get("answer");
  const index = parseInt(formData.get("index")) + 1;

  // Si aucune réponse n'est sélectionnée, on vérifie si le temps est écoulé
  if (!answerId) {
    if (window.timeRemaining <= 0) {
      // Temps écoulé : on considère la réponse comme fausse
      answerId = -1;
    } else {
      // Sinon, on affiche le message d'alerte si l'utilisateur soumet manuellement
      alert("Veuillez sélectionner une réponse !");
      return;
    }
  }

  fetch(`/question/${quizSlug}/check`, {
    method: "POST",
    body: JSON.stringify({ question_id: questionId, answer_id: answerId }),
    headers: { "Content-Type": "application/json" },
  })
    .then((response) => response.json())
    .then((data) => {
      // Indique visuellement la réponse (correcte ou non)
      const selectedContainer = document.querySelector(`.answer-container[data-answer-id="${answerId}"]`);
      if (selectedContainer) {
        selectedContainer.classList.add(data.correct ? "true" : "false");
      }

      // Si la réponse est correcte, on calcule les bonus (2 pts par seconde restante)
      if (data.correct) {
        let bonus = window.timeRemaining * 2;
        playerScore += 10 + bonus;
        document.getElementById("score").textContent = `Votre score : ${playerScore} pts`;
      }

      setTimeout(() => {
        if (index < totalQuestions) {
          fetch(`/question/${quizSlug}/next?index=${index}`, { method: 'GET' })
            .then(response => response.text())
            .then(html => {
              document.getElementById('quiz-container').innerHTML = html;
              // Met à jour l'affichage du score
              document.getElementById('score').textContent = `Votre score : ${playerScore} pts`;
              // Réinitialise le timer pour la nouvelle question
              if (typeof initTimer === 'function') {
                initTimer();
              }
              // Réinitialise éventuellement les animations
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
