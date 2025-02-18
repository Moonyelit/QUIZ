<?php

namespace App\Controller;

use App\Entity\Quiz;
use App\Entity\Question;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class QuestionController extends AbstractController
{
    #[Route('/question/{Slug}', name: 'app_question')]
    public function questionQuiz(string $Slug, Request $request, EntityManagerInterface $entityManager): Response
    {
        $quiz = $entityManager->getRepository(Quiz::class)->findOneBy(['Slug' => $Slug]);    

        if (!$quiz) {
            throw $this->createNotFoundException('Quiz non trouvé');
        }

        $questions = $entityManager->getRepository(Question::class)->findBy(['quiz' => $quiz]);
        $questionIndex = 0;
        $question = $questions[$questionIndex] ?? null;

        return $this->render('questionQuiz.html.twig', [
            'quiz' => $quiz,
            'questions' => $questions,
            'question' => $question,
            'index' => $questionIndex,
        ]);
    }

    #[Route('/question/{Slug}/next', name: 'app_question_next')]
    public function nextQuestion(string $Slug, Request $request, EntityManagerInterface $entityManager): Response
    {
        $quiz = $entityManager->getRepository(Quiz::class)->findOneBy(['Slug' => $Slug]);    
    
        if (!$quiz) {
            throw $this->createNotFoundException('Quiz non trouvé');
        }
    
        $questionIndex = $request->query->get('index', 0);
        $questions = $entityManager->getRepository(Question::class)->findBy(['quiz' => $quiz]);
    
        if ($questionIndex >= count($questions)) {
            return new Response('Fin du quiz', 200);
        }
    
        $question = $questions[$questionIndex];
    
        return $this->render('question.html.twig', [
            'quiz' => $quiz, // Ajoutez cette ligne
            'question' => $question,
            'index' => $questionIndex,
        ]);
    }
}