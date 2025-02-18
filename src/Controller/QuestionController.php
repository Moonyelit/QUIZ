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
    #[Route('/question/{Slug}', name: 'app_question')]
    public function questionQuiz(string $Slug, Request $request, EntityManagerInterface $entityManager): Response
    {
        $quizzes = $entityManager->getRepository(Quiz::class)->findOneBy(['Slug' => $Slug]);	

        if (!$quizzes) {
            throw $this->createNotFoundException('Quiz non trouvé');
        }

    $questions = $entityManager->getRepository(Question::class)->findBy(['quiz' => $quizzes]);
        
        return $this->render('questionQuiz.html.twig', [
            'quizzes' => $quizzes,
            'questions' => $questions,
        ]);
    }
}