<?php

namespace App\Controller;

use App\Entity\Answer;
use App\Entity\Question;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use http\Exception;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;


class AnswerController extends AbstractController
{
    private $manager;

    public function __construct(EntityManagerInterface $manager) {
        $this->manager = $manager;
    }

    /**
     * @Route("/answers/{id_q}", name="show_answer")
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     */

    public function createAction(Request $request, $id_q){

        $repository = $this->manager->getRepository(Question::class);
        $question = $repository->findOneBy(['id' => $id_q]);

        $repository = $this->manager->getRepository(Answer::class);
        $answers = $repository->findBy(['question_id' => $id_q]);

        $repository = $this->manager->getRepository(User::class);
        $users = $repository->findAll();

        $answer = new Answer();
        $form = $this->createFormBuilder($answer)
            ->add('content',TextareaType::class)
            ->add('status', CheckboxType::class,[
                'required' => false,
                'attr' => ['class' => 'ui positive button']
            ])
            ->add('REPONDRE', SubmitType::class,[
                'attr' => ['class' => 'ui inverted blue button'],
            ])
            ->getForm();
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $answer->setQuestionId($id_q);
            $em = $this->getDoctrine()->getManager();
            try{
                $em->persist($answer);

                $em->flush();

            }catch (Exception $e){

            }
            return $this->redirectToRoute('show_answer',["id_q" => $id_q]);
        }
        return new Response(
            $this->render('answer/answer.html.twig', ['question' => $question,'answers' => $answers, 'users' => $users, 'form' => $form->createView()])
        );
    }

    /**
     * @Route("/answer/delete/{id_answer}/{id_q}")
     * @param  $id_answer
     * @param  $id_q
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function deleteAction( $id_answer, $id_q)
    {
        $repository = $this->manager->getRepository(Answer::class);
        $answer = $repository->findOneBy(['id' => $id_answer]);

        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->remove($answer);
        $entityManager->flush();
        return $this->redirectToRoute('show_answer',['id_q' => $id_q]);
    }

}
