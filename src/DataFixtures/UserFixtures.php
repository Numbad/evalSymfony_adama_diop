<?php

namespace App\DataFixtures;
use Faker;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\User;

class UserFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {

        $faker = Faker\Factory::create('fr_FR');

        $usersName = ['Quentin', 'Adama', 'Alex', 'Mouhamed', 'Cheikh'];
        foreach ($usersName as $name) {
            $user = new User();
            $user->setName($name);
            $manager->persist($user);
        }

        $manager->flush();
    }

}
