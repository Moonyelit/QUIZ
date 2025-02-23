document.addEventListener('DOMContentLoaded', () => {
    const podiumItems = document.querySelectorAll('.podium-item');
    const order = [2, 1, 0]; // Ordre d'apparition : troisième, deuxième, premier
    order.forEach((index, i) => {
        setTimeout(() => {
            podiumItems[index].classList.add('animate-slide-up');
        }, i * 1000); // Délai de 1 seconde entre chaque élément
    });
});