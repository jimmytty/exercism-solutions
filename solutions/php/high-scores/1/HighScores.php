<?php

declare(strict_types=1);

class HighScores
{
    public $scores;
    public $latest;
    public $personalBest;
    public $personalTopThree;

    public function __construct(array $scores)
    {
        $this->scores       = $scores;
        $this->latest       = end($scores);
        $this->personalBest = max($scores);
        rsort($scores);
        $this->personalTopThree = array_slice($scores, 0, 3);
    }

}
