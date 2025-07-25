<?php

use PHPUnit\Framework\TestCase;
use PHPUnit\Framework\Attributes\DataProvider;
use PHPUnit\Framework\Attributes\TestDox;

class LuckyNumbersTest extends TestCase
{
    public static function setUpBeforeClass(): void
    {
        require_once 'LuckyNumbers.php';
    }

    /**
     * @task_id 1
     */
    #[DataProvider('sumUpTestCases')]
    #[TestDox('Sums up $digitsOfNumber1 and $digitsOfNumber2 to $expected')]
    public function testSumUp(
        array $digitsOfNumber1,
        array $digitsOfNumber2,
        int $expected
    ): void {
        $class = new LuckyNumbers();

        $actual = $class->sumUp($digitsOfNumber1, $digitsOfNumber2);

        $this->assertSame($expected, $actual);
    }

    public static function sumUpTestCases()
    {
        return [
            'both numbers same length 1' => [ [2], [7], 9 ],
            'both numbers same length 2' => [ [2, 4], [5, 7], 81 ],
            'both numbers same length 3' => [ [5, 3, 4], [3, 6, 2], 896 ],
            'first shorter than second number' => [ [2, 4], [1, 5, 7], 181 ],
            'first longer than second number' => [ [2, 2, 5], [5, 7], 282 ],
            'handles overflow' => [ [9, 9, 9], [1, 0, 1], 1100 ],
            'handles large numbers' => [ [9, 9, 9, 9, 9, 9], [1], 1000000 ],
        ];
    }

    /**
     * @task_id 2
     */
    #[DataProvider('isPalindromeTestCases')]
    #[TestDox('Detects palindromic number $number')]
    public function testIsPalindrome(int $number): void
    {
        $class = new LuckyNumbers();

        $actual = $class->isPalindrome($number);

        $this->assertTrue($actual);
    }

    public static function isPalindromeTestCases()
    {
        return [
            [ 0 ],
            [ 6 ],
            [ 33 ],
            [ 15651 ],
            [ 48911984 ],
        ];
    }

    /**
     * @task_id 2
     */
    #[DataProvider('isNoPalindromeTestCases')]
    #[TestDox('Detects non-palindromic number $number')]
    public function testIsNoPalindrome(int $number): void
    {
        $class = new LuckyNumbers();

        $actual = $class->isPalindrome($number);

        $this->assertFalse($actual);
    }

    public static function isNoPalindromeTestCases()
    {
        return [
            [ 12 ],
            [ 156512 ],
            [ 48921984 ],
        ];
    }

    /**
     * @task_id 3
     */
    #[TestDox('Error message for empty input')]
    public function testErrorMessageForEmptyInput(): void
    {
        $class = new LuckyNumbers();

        $actual = $class->validate('');

        $this->assertSame('Required field', $actual);
    }

    /**
     * @task_id 3
     */
    #[DataProvider('invalidInputTestCases')]
    #[TestDox('Error message for invalid input $input')]
    public function testErrorMessageForInvalidInput(
        string $input
    ): void {
        $class = new LuckyNumbers();

        $actual = $class->validate($input);

        $this->assertSame('Must be a whole number larger than 0', $actual);
    }

    public static function invalidInputTestCases()
    {
        return [
            [ 'some text' ],
            [ 'f861' ],
            [ '-42' ],
            [ '0' ],
        ];
    }

    /**
     * @task_id 3
     */
    #[DataProvider('validInputTestCases')]
    #[TestDox('Error message for invalid input $input')]
    public function testErrorMessageForValidInput(
        string $input
    ): void {
        $class = new LuckyNumbers();

        $actual = $class->validate($input);

        $this->assertSame('', $actual);
    }

    public static function validInputTestCases()
    {
        return [
            [ '1' ],
            [ '123456789' ],
            [ '   123    ' ],
            [ '5e3' ],
            [ '4.2E1' ],
            [ '00015-plus' ],
        ];
    }
}
