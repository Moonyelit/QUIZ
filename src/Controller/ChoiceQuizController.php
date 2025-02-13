<?php

namespace App\Controller;

use App\Entity\Quiz;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;


class ChoiceQuizController extends AbstractController
{
    #[Route('/choiceQuiz', name: 'choice_quiz')]
    public function choiceQuiz(Request $request, EntityManagerInterface $entityManager): Response
    {
        $quizzes = $entityManager->getRepository(Quiz::class)->findAll();

        return $this->render('choiceQuiz.html.twig', [
            'quizzes' => $quizzes,
        ]);
    }
}