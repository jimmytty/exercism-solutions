# Annalyn's Infiltration

Welcome to Annalyn's Infiltration on Exercism's PHP Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## Booleans

The `bool` type (short for boolean) has only two values -- `true` and `false`.
The `true` and `false` literal values are case insensitive in code.

```php
<?php

$value_is_true = true;
$value_is_false = false;
```

Boolean values are often used in logical expressions as the result of an operator and then used in control structures.

### Logical Operators

There are several logical operators:

- `!$a`: returns `true` if `$a` is not `true`
- `$a && $b`: returns `true` if `$a` and `$b` are both `true`
- `$a || $b`: returns `true` if either `$a` or `$b` are `true`

~~~~exercism/caution
There is an `and` and `or` operator and they are complementary to `&&` and `||` respectively.
They do not have the same behaviour as `&&` and `||` and may produce unexpected results, and as such their use is discouraged.
~~~~

## Instructions

In this exercise, you'll be implementing the quest logic for a new RPG game a friend is developing.
The game's main character is Annalyn, a brave girl with a fierce and loyal pet dog.
Unfortunately, disaster strikes, as her best friend was kidnapped while searching for berries in the forest.
Annalyn will try to find and free her best friend, optionally taking her dog with her on this quest.

After some time spent following her best friend's trail, she finds the camp in which her best friend is imprisoned.
It turns out there are two kidnappers: a mighty knight and a cunning archer.

Having found the kidnappers, Annalyn considers which of the following actions she can engage in:

- _Fast attack_: a fast attack can be made if the **knight** is **_sleeping_**, as it takes time for him to get his armor on, so he will be vulnerable.
- _Spy_: the group can be spied upon if **at least one** of them is **_awake_**. Otherwise, spying is a waste of time.
- _Signal prisoner_: the prisoner can be signalled using bird sounds if the **prisoner** is **_awake_** and the **archer** is **_sleeping_**, as archers are trained in bird signaling so they could intercept the message.
- _Liberate prisoner_: Annalyn can try sneaking into the camp to free the prisoner.
  This is a risky thing to do and can only succeed in one of two ways:
  - If Annalyn has her pet dog with her she can rescue the prisoner if the **archer** is **_asleep_**.
    The knight is scared of the dog and the archer will not have time to get ready before Annalyn and the prisoner can escape.
  - If Annalyn does not have her dog then she and the prisoner must be very sneaky!
    Annalyn can free the prisoner if the **prisoner** is **_awake_** and the **knight** and **archer** are both **_sleeping_**, but if the **prisoner** is **_sleeping_** they can't be rescued: the prisoner would be startled by Annalyn's sudden appearance and wake up the knight and archer.

You have four tasks: to implement the logic for determining if the above actions are available based on the state of the three characters found in the forest and whether Annalyn's pet dog is present or not.

## 1. Check if the 'Fast Attack' action is possible

Implement a function named `canFastAttack` that takes a boolean value which indicates if the knight is awake.
This function returns `true` if the 'Fast Attack' action is available based on the state of the character.
Otherwise, returns `false`:

```php
<?php
$is_knight_awake = true;

$infiltration = new AnnalynsInfiltration();
$infiltration->canFastAttack($is_knight_awake);
// => false
```

## 2. Check if the 'Spy' action is possible

Implement a function named `canSpy` that takes three boolean values, indicating if the knight, archer and the prisoner, respectively, are awake.
The function returns `true` if the 'Spy' action is available based on the state of the characters.
Otherwise, returns `false`:

```php
<?php
$is_knight_awake = false;
$is_archer_awake = true;
$is_prisoner_awake = false;

$infiltration = new AnnalynsInfiltration();
$infiltration->canSpy($is_knight_awake, $is_archer_awake, $is_prisoner_awake);
// => true
```

## 3. Check if the 'Signal Prisoner' action is possible

Implement a function named `canSignal` that takes two boolean values, indicating if the archer and the prisoner, respectively, are awake.
The function returns `true` if the 'Signal Prisoner' action is available based on the state of the characters.
Otherwise, returns `false`:

```php
<?php
$is_archer_awake = false;
$is_prisoner_awake = true;

$infiltration = new AnnalynsInfiltration();
$infiltration->canSignal($is_archer_awake, $is_prisoner_awake);
// => true
```

## 4. Check if the 'Liberate Prisoner' action is possible

Implement a function named `canLiberate` that takes four boolean values.
The first three parameters indicate if the knight, archer and the prisoner, respectively, are awake.
The last parameter indicates if Annalyn's pet dog is present.
The function returns `true` if the 'Liberate Prisoner' action is available based on the state of the characters and Annalyn's pet dog presence.
Otherwise, it returns `false`:

```php
<?php
$is_knight_awake = false;
$is_archer_awake = true;
$is_prisoner_awake = false;
$is_dog_present = false;

$infiltration = new AnnalynsInfiltration();
$infiltration->canLiberate(
    $is_knight_awake,
    $is_archer_awake,
    $is_prisoner_awake,
    $is_dog_present
);
// => false
```

## Source

### Created by

- @neenjaw