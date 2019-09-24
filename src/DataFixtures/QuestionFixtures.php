<?php

namespace App\DataFixtures;
use Faker;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\Question;

class QuestionFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {

        $faker = Faker\Factory::create('fr_FR');

        for ($i = 0; $i < 20; $i++) {
            $question = new Question();
            $question->setTitle("title$i");
            $question->setContent("Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression$i");
            $question->setUserId(rand(1,5));
            $manager->persist($question);
        }

        $manager->flush();
    }

}
