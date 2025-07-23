unit class Bob;

method hey ($msg) {

    my %bobAnswers = (
        "Calm down, I know what I'm doing!" => [ "WHAT'S GOING ON?" ],
        "Fine. Be that way!" => [
            "          ", "", "\n\r \t", "\t\t\t\t\t\t\t\t\t\t",
        ],
        "Sure." => [
            "4?", ":) ?",
            "Does this cryogenic chamber make me look fat?",
            "Okay if like my  spacebar  quite a bit?   ",
            "Wait! Hang on. Are you going to be OK?",
            "You are, what, like 15?", "fffbbcbeab?",
        ],
        "Whatever." => [
            "         hmmmmmmm...", "1, 2, 3",
            "Ending with ? means a question.", "Hi there!",
            "It's OK if you don't want to go work for NASA.",
            "This is a statement ending with whitespace      ",
            "Tom-ay-to, tom-aaaah-to.",
            "\nDoes this cryogenic chamber make me look fat?\nNo.",
         ],
        "Whoa, chill out!" => [
            "1, 2, 3 GO!", "FCECDFCAAB", "I HATE THE DENTIST",
            "WATCH OUT!", Q[ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!],
        ],
    );

    my %heyBobQuestions;
    for %bobAnswers.kv -> $answer, @questions {
        for @questions -> $question {
            %heyBobQuestions{$question} = $answer;
        }
    }

    return %heyBobQuestions{$msg};
}

