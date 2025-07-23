my class X::Bowling::GameOver is Exception {
    method message {'Cannot roll after game is over'}
}

my class X::Bowling::GameInProgress is Exception {
    method message {'Score cannot be taken until the end of the game'}
}

my class X::Bowling::TooManyPins is Exception {
    method message {'Pin count exceeds pins on the lane'}
}

my class X::Bowling::NegativePins is Exception {
    method message {'Negative roll is invalid'}
}

class Bowling {

    has @frame;
    has $f_idx = 0;
    has @tabulate;
    has $score = 0;

    method roll ($pins) {
        if $f_idx > 9  {
            if @frame[9].sum != 10 {
                die X::Bowling::GameOver.new();
            }
        }
        die X::Bowling::NegativePins.new() if $pins <  0;
        die X::Bowling::TooManyPins.new()  if $pins > 10;

        @frame[$f_idx].push($pins);

        if @frame[$f_idx].sum > 10 {
            die X::Bowling::TooManyPins.new();
        }

        if $f_idx == 10 {
            if @frame[9][0] != 10 && @frame[9].sum != 10 {
                die X::Bowling::GameOver.new()
            }
            if @frame[9][0] != 10 && @frame[9].sum == 10 && @frame[10].elems > 1 {
                die X::Bowling::GameOver.new()
            }
        }
        elsif $f_idx == 11 {
            if @frame[10][0] != 10 {
                die X::Bowling::GameOver.new()
            }
        }

        if $pins == 10 || @frame[$f_idx].elems >= 2 { $f_idx++ }

    }

    method score {
        die X::Bowling::GameInProgress.new() if @frame.elems < 10;

        if @frame[9][0] == 10 {
            die X::Bowling::GameInProgress.new() if @frame.elems < 11;
            if @frame[10][0] == 10 {
                die X::Bowling::GameInProgress.new() if @frame.elems < 12
            }
        }
        elsif @frame[9].sum == 10 {
            die X::Bowling::GameInProgress.new() if @frame.elems < 11;
            die X::Bowling::GameOver.new() if @frame[10].elems > 1;
        }

        loop ( my $idx = 0; $idx < @frame.elems; $idx++ ) {
            @tabulate[$idx].append: @frame[$idx].List;
            if @frame[$idx][0] == 10 && $idx < 9 {
                my @strike_bonus;
                if @frame[$idx+1].elems < 2 {
                    @strike_bonus.append: (
                        @frame[$idx+1][0],
                        @frame[$idx+2][0],
                    );
                }
                else { @strike_bonus.append: @frame[$idx+1].List }
                @tabulate[$idx].append: @strike_bonus;
            }
            elsif @frame[$idx].sum == 10 && $idx < 9 {
                my @spare_bonus = @frame[$idx+1][0];
                @tabulate[$idx].append: @spare_bonus;
            }
        }
        $score += $_.sum for @tabulate;

        return $score;
    }

}
