<?php

namespace App\Controller;

use App\Entity\Quiz;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class ResultController extends AbstractController
{
    #[Route('/results', name: 'results')]
    public function resultsQuiz (Request $request, EntityManagerInterface $entityManager, Security $security): Response
    {

        $session = $request->getSession();
        $quizId = $session->get('quiz_id');
        $playerScore = $session->get('player_score');
        $player = $security->getUser();

        if (!$quizId) {
            throw $this->createNotFoundException('Quiz non trouvé');
        }

        $quiz = $entityManager->getRepository(Quiz::class)->find($quizId);
        if (!$quiz) {
            throw $this->createNotFoundException('Quiz non trouvé');
        }

        $scores = $entityManager->getRepository(Quiz::class)->findBy(['quiz' => $quizId]);

        usort($scores, function($a, $b) {
            return $b->getScore() - $a->getScore();
        });

        $topScores = array_slice($scores, 0, 3);

        return $this->render('resultQuiz.html.twig', [
            'quiz' => $quiz,
            'playerScore' => $playerScore,
            'topScores' => $topScores,
            'player' => $player
        ]);
    }
}