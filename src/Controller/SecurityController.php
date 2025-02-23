<?php
namespace App\Controller;

use App\Entity\Player;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{
    #[Route(path: '/', name: 'app_login')]
    public function login(Request $request, AuthenticationUtils $authenticationUtils, UserPasswordHasherInterface $passwordHasher, EntityManagerInterface $entityManager): Response
    {
        if ($this->getUser()) {
            return $this->redirectToRoute('choice_quiz');
        }

        $error = $authenticationUtils->getLastAuthenticationError();

        // Gestion des erreurs d'authentification
        if ($error) {
            if ($error->getMessageKey() === 'Invalid credentials.') {
                $this->addFlash('error', 'Identifiants incorrects.');
            }
        }

        $lastUsername = $authenticationUtils->getLastUsername();

        if ($request->isMethod('POST')) {
            $username = $request->request->get('_username');
            $password = $request->request->get('_password');

            if (!preg_match('/^[A-Za-z0-9]{3,10}$/', $username)) {
                $this->addFlash('error', 'Le pseudo doit contenir entre 3 et 10 caractères alphanumériques.');
                return $this->redirectToRoute('app_login');
            }

            $player = $entityManager->getRepository(Player::class)->findOneBy(['username' => $username]);

            if ($player) {
                if ($passwordHasher->isPasswordValid($player, $password)) {
                    return $this->redirectToRoute('choice_quiz');
                } else {
                    $this->addFlash('error', 'Mot de passe incorrect pour ce pseudo.');
                }
            } else {
                $this->addFlash('error', 'Le pseudo n\'existe pas.');
            }
        }

        return $this->render('security/login.html.twig', [
            'last_username' => $lastUsername,
            'error' => null,
        ]);
    }

    #[Route(path: '/logout', name: 'app_logout')]
    public function logout(): void
    {
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }
}
