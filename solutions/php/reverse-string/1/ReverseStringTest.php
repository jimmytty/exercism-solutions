<?php

declare(strict_types=1);

use PHPUnit\Framework\TestCase;
use PHPUnit\Framework\Attributes\TestDox;

class ReverseStringTest extends TestCase
{
    public static function setUpBeforeClass(): void
    {
        require_once 'ReverseString.php';
    }

    /**
     * uuid c3b7d806-dced-49ee-8543-933fd1719b1c
     */
    #[TestDox('an empty string')]
    public function testEmptyString(): void
    {
        $this->assertEquals("", reverseString(""));
    }

    /** uuid 01ebf55b-bebb-414e-9dec-06f7bb0bee3c */
    #[TestDox('a word')]
    public function testWord(): void
    {
        $this->assertEquals("tobor", reverseString("robot"));
    }

    /**
     * uuid 0f7c07e4-efd1-4aaa-a07a-90b49ce0b746
     */
    #[TestDox('a capitalized word')]
    public function testCapitalizedWord(): void
    {
        $this->assertEquals("nemaR", reverseString("Ramen"));
    }

    /**
     * uuid 71854b9c-f200-4469-9f5c-1e8e5eff5614
     */
    #[TestDox('a sentence with punctuation')]
    public function testSentenceWithPunctuation(): void
    {
        $this->assertEquals("!yrgnuh m'I", reverseString("I'm hungry!"));
    }

    /**
     * uuid 1f8ed2f3-56f3-459b-8f3e-6d8d654a1f6c
     */
    #[TestDox('a palindrome')]
    public function testPalindrome(): void
    {
        $this->assertEquals("racecar", reverseString("racecar"));
    }

    /**
     * uuid b9e7dec1-c6df-40bd-9fa3-cd7ded010c4c
     */
    #[TestDox('an even-sized word')]
    public function testEvenSizedWord(): void
    {
        $this->assertEquals("reward", reverseString("drawer"));
    }
}
