<?php

namespace App\Service;

use Symfony\Component\String\Slugger\SluggerInterface;

class SlugGenerator
{
    private SluggerInterface $slugger;

    public function __construct(SluggerInterface $slugger)
    {
        $this->slugger = $slugger;
    }

    public function generate(string $name): string
    {
        return $this->slugger->slug($name)->lower() . '-' . uniqid();
    }
}