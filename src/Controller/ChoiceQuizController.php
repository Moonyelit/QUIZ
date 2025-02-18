<?php

namespace App\Controller;

use App\Entity\Quiz;
use App\Entity\Score;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class ChoiceQuizController extends AbstractController
{
    #[Route('/choiceQuiz', name: 'choice_quiz')]
    public function choiceQuiz(Request $request, EntityManagerInterface $entityManager, Security $security): Response
    {
        $quizzes = $entityManager->getRepository(Quiz::class)->findAll();
        $player = $security->getUser();

        $quizzesWithScores = [];

        foreach ($quizzes as $quiz) {
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
            ];
        }

        return $this->render('choiceQuiz.html.twig', [
            'quizzes' => $quizzes,
            'player' => $player,
            'quizzesWithScores' => $quizzesWithScores,
        ]);
    }
}