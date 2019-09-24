<?php

namespace App\DataFixtures;
use Faker;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\Answer;

class AnswerFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {

        $faker = Faker\Factory::create('fr_FR');

        for ($i = 0; $i < 100; $i++) {
            $answer = new answer();
            $answer->setStatus($i >=  rand(-100, 100));
            $answer->setContent("Le Lorem Ipsum est simplement du faux");
            $answer->setQuestionId(rand(1,20));
            $manager->persist($answer);
        }

        $manager->flush();
    }

}
