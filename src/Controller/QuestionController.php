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
            'totalQuestions' => count($questions),
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

        return $this->render('questionQuiz.html.twig', [
            'quiz' => $quiz,
            'question' => $question,
            'index' => $questionIndex,
            'totalQuestions' => count($questions),
        ]);
    }

    #[Route('/question/{Slug}/check', name: 'app_question_check', methods: ['POST'])]
    public function checkAnswer(string $Slug, Request $request, EntityManagerInterface $entityManager): Response
    {
        $data = json_decode($request->getContent(), true);
        $questionId = $data['question_id'];
        $answerId = $data['answer_id'];

        $question = $entityManager->getRepository(Question::class)->find($questionId);
        if (!$question) {
            return $this->json(['error' => 'Question non trouvée'], 404);
        }

        $correctAnswer = $question->getCorrectAnswer();
        if (!$correctAnswer) {
            return $this->json(['error' => 'Réponse correcte non trouvée'], 404);
        }

        $isCorrect = $correctAnswer->getId() === (int)$answerId;

        return $this->json(['correct' => $isCorrect]);
    }


    #[Route('/question/{Slug}/finish', name: 'app_question_finish')]
    public function finishQuiz(string $Slug, Request $request, EntityManagerInterface $entityManager): Response
    {
        $quiz = $entityManager->getRepository(Quiz::class)->findOneBy(['Slug' => $Slug]);

        if (!$quiz) {
            throw $this->createNotFoundException('Quiz non trouvé');
        }

        $playerScore = $request->query->get('score', 0);
        $session = $request->getSession();
        $session->set('quiz_id', $quiz->getId());
        $session->set('player_score', $playerScore);

        return $this->redirectToRoute('results');
    }
}
