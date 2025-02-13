<?php

namespace App\Controller;

use App\Entity\Quiz;
use App\Entity\Question;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class ResultController extends AbstractController
{
    #[Route('/results', name: 'results')]
    public function resultsQuiz (Request $request, EntityManagerInterface $entityManager): Response
    {
        $quizzes = $entityManager->getRepository(Quiz::class)->findAll();

        return $this->render('resultQuiz.html.twig', [
            'quizzes' => $quizzes,
        ]);
    }
}