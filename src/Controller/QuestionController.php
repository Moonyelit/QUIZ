<?php

namespace App\Controller;

use App\Entity\Quiz;
use App\Entity\Question;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class QuestionController extends AbstractController
{
    #[Route('/quiz/{id}/questions', name: 'app_question')]
    public function questionQuiz(int $id, Request $request, EntityManagerInterface $entityManager): Response
    {
        $quizzes = $entityManager->getRepository(Quiz::class)->find($id);

        if (!$quizzes) {
            throw $this->createNotFoundException('Quiz not found');
        }

    $questions = $entityManager->getRepository(Question::class)->findBy(['quiz' => $quizzes]);
        
        return $this->render('questionQuiz.html.twig', [
            'quizzes' => $quizzes,
            'questions' => $questions,
        ]);
    }
}