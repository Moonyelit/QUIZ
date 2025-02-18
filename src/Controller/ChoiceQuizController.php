<?php

namespace App\Controller;

use App\Entity\Quiz;
use App\Entity\Score;
use App\Service\SlugGeneratorService;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ChoiceQuizController extends AbstractController
{
    private SlugGeneratorService $slugGenerator;

    public function __construct(SlugGeneratorService $slugGenerator)
    {
        $this->slugGenerator = $slugGenerator;
    }

    #[Route('/choiceQuiz', name: 'choice_quiz')]
    public function choiceQuiz(Request $request, EntityManagerInterface $entityManager, Security $security): Response
    {
        $quizzes = $entityManager->getRepository(Quiz::class)->findAll();
        $player = $security->getUser();

        $quizzesWithScores = []; // Initialisation correcte du tableau

        foreach ($quizzes as $quiz) {
            // Générer et définir le slug si non défini
            if (!$quiz->getSlug()) {
                $slug = $this->slugGenerator->generate($quiz->getName());
                $quiz->setSlug($slug);
                $entityManager->persist($quiz);
                $entityManager->flush();
            }

            // Récupérer les scores pour le quiz en question
            $scores = $entityManager->getRepository(Score::class)->findBy(['quiz' => $quiz]);

            // Trier les scores pour obtenir les trois meilleurs scores
            usort($scores, function ($a, $b) {
                return $b->getScore() <=> $a->getScore();
            });

            // Récupérer les trois meilleurs scores
            $topScores = array_slice($scores, 0, 3);

            $quizzesWithScores[] = [
                'quiz' => $quiz,
                'topScores' => $topScores,
                'link' => $this->generateUrl('app_question', ['slug' => $quiz->getSlug()]), // Utilisation du slug
            ];
        }

        return $this->render('choiceQuiz.html.twig', [
            'quizzes' => $quizzes,
            'player' => $player,
            'quizzesWithScores' => $quizzesWithScores,
        ]);
    }
}