// Fonction qui peut être appelée au chargement complet de la page
function initQuiz() {
    console.log("initQuiz() appelé");
    // Ici, rien de spécifique à faire, car on utilise l'event delegation sur document
  }
  
  // Gestion globale du clic sur une réponse
  document.addEventListener('click', function(event) {
    console.log("Clic détecté");
    // Vérifie si le clic est sur ou dans une .answer-container
    const container = event.target.closest('.answer-container');
    if (!container) return;
    
    // Retire "selected" de toutes les réponses
    document.querySelectorAll('.answer-container').forEach(c => c.classList.remove('selected'));
    // Ajoute "selected" à la réponse cliquée
    container.classList.add('selected');
    const radio = container.querySelector('input[type="radio"]');
    if (radio) radio.checked = true;
  });
  
  // Gestion globale de la soumission du formulaire de question
  document.addEventListener('submit', function(event) {
    console.log("Soumission de formulaire détectée");
    // On traite uniquement le formulaire avec l'id "question-form"
    if (!event.target.matches('#question-form')) return;
    
    event.preventDefault();
    console.log("Formulaire soumis");
    
    const form = event.target;
    const formData = new FormData(form);
    const questionId = formData.get('question_id');
    const answerId = formData.get('answer');
    const index = parseInt(formData.get('index')) + 1;
    
    if (!answerId) {
      alert("Veuillez sélectionner une réponse !");
      return;
    }
    
    // Envoi de la réponse pour vérification
    fetch(`/question/${quizSlug}/check`, {
      method: 'POST',
      body: JSON.stringify({ question_id: questionId, answer_id: answerId }),
      headers: { 'Content-Type': 'application/json' }
    })
    .then(response => response.json())
    .then(data => {
      const selectedContainer = document.querySelector(`.answer-container[data-answer-id="${answerId}"]`);
      if (selectedContainer) {
        selectedContainer.classList.add(data.correct ? 'true' : 'false');
      }
      
      // Après 1 seconde, passer à la question suivante ou finir
      setTimeout(() => {
        if (index < totalQuestions) {
          fetch(`/question/${quizSlug}/next?index=${index}`, { method: 'GET' })
          .then(response => response.text())
          .then(html => {
            // Remplacer uniquement le contenu de #quiz-container
            document.getElementById('quiz-container').innerHTML = html;
          });
        } else {
          window.location.href = `/question/${quizSlug}/finish`;
        }
      }, 1000);
    });
  });
  
  // Écouteur pour Turbo ou DOMContentLoaded
  if (window.Turbo) {
    document.addEventListener('turbo:load', initQuiz);
  } else {
    document.addEventListener('DOMContentLoaded', initQuiz);
  }