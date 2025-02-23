function initTimer() {
    const progressBar = document.getElementById('progress-bar');
    const questionForm = document.getElementById('question-form');
    if (!progressBar || !questionForm) return; // On quitte si les éléments ne sont pas trouvés

    const timeLimit = 15; // Durée totale en secondes
    let timeRemaining = timeLimit;
    window.timeRemaining = timeRemaining; // Variable globale accessible dans AJAX.js

    // Réinitialise la barre de progression à 100%
    progressBar.style.width = '100%';

    const timerInterval = setInterval(() => {
        timeRemaining--;
        window.timeRemaining = timeRemaining;
        const percentage = (timeRemaining / timeLimit) * 100;
        progressBar.style.width = percentage + '%';

        if (timeRemaining <= 0) {
            clearInterval(timerInterval);
            // Déclenche un submit avec bubbling pour que le listener AJAX le capte
            if (questionForm) {
                questionForm.dispatchEvent(new Event('submit', { bubbles: true, cancelable: true }));
            }
        }
    }, 1000);

    // Si le formulaire est soumis avant la fin du timer, on arrête le timer
    questionForm.addEventListener('submit', function(e) {
        clearInterval(timerInterval);
        window.timeRemaining = timeRemaining;
    });
}

// Si le DOM est déjà chargé, on lance immédiatement ; sinon, on attend
if (document.readyState !== 'loading') {
    initTimer();
} else {
    document.addEventListener('DOMContentLoaded', initTimer);
}
window.initTimer = initTimer; // Rendre accessible la fonction globalement
