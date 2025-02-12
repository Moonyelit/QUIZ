<?php

namespace App\Controller;

use App\Entity\Player;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Security\Http\Attribute\IsGranted;

class SecurityController extends AbstractController
{
    #[Route(path: '/', name: 'app_login')]
    public function login(Request $request, AuthenticationUtils $authenticationUtils, UserPasswordHasherInterface $passwordHasher, EntityManagerInterface $entityManager): Response
    {
        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();

        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        if ($request->isMethod('POST')) {
            $username = $request->request->get('_username');
            $password = $request->request->get('_password');

            $player = $entityManager->getRepository(Player::class)->findOneBy(['username' => $username]);

            if ($player) {
                if ($passwordHasher->isPasswordValid($player, $password)) {
                    // Log in the user
                    return $this->redirectToRoute('home');
                } else {
                    $this->addFlash('error', 'Invalid credentials.');
                }
            } else {
                // Create a new player
                $player = new Player();
                $player->setUsername($username);
                $player->setPassword($passwordHasher->hashPassword($player, $password));

                $entityManager->persist($player);
                $entityManager->flush();

                $this->addFlash('success', 'Account created successfully.');
                return $this->redirectToRoute('home');
            }
        }

        return $this->render('security/login.html.twig', [
            'last_username' => $lastUsername,
            'error' => $error,
        ]);
    }

    #[Route(path: '/logout', name: 'app_logout')]
    public function logout(): void
    {
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }
}