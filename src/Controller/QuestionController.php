<?php

namespace App\Controller;

use App\Entity\Answer;
use App\Entity\Question;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use http\Exception;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class QuestionController extends AbstractController
{

    private $manager;

    public function __construct(EntityManagerInterface $manager) {
        $this->manager = $manager;
    }


    /**
     * @Route("/questions", name="homepage")
     */

    public function index()
    {
        $repository = $this->manager->getRepository(Question::class);
        $questions = $repository->findAll();

        $repository = $this->manager->getRepository(Answer::class);
        $answers = $repository->findAll();

        $repository = $this->manager->getRepository(User::class);
        $users = $repository->findAll();

        $questionsToReturn = [];
        foreach ($questions as $question){
            $q["question"] = $question;
            $nbAnswers = 0;
            foreach ($answers as $answer){
                if($question->getId() == $answer->getQuestionId()){
                    $nbAnswers++;
                }
            }
            $q["nbAnswers"] = $nbAnswers;
            $q["user"] = $users[$q["question"]->getUserId() - 1]->getName();

            $questionsToReturn[] = $q;
        }
        return new Response(
            $this->render('question/question.html.twig', ['questions' => $questionsToReturn])
        );

    }

    /**
     * @Route("/question/create", name="create_question")
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     */

    public function createAction(Request $request){
        $question = new Question();
        $repository = $this->manager->getRepository(User::class);
        $users = $repository->findAll();
        $users_name = [];
        $cpt = 1;
        foreach ($users as $user){
            $users_name[$user->getName()] = $cpt;
            $cpt++;
        }

        $form = $this->createFormBuilder($question)
            ->add('title')
            ->add('content',TextareaType::class)
            ->add('user_id', ChoiceType::class, [
                'choices' => $users_name,
            ])
            ->add('Valider', SubmitType::class,[
                'attr' => ['class' => 'ui inverted blue button'],
            ])
            ->getForm();
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            try{
                $em->persist($question);

                $em->flush();

            }catch (Exception $e){

            }
            return $this->redirectToRoute('homepage');
        }
        return new Response(
            $this->render('question/addQuestion.html.twig', ['form' => $form->createView()])
        );

    }

}
