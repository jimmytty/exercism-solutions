package HighScoreBoard;

use v5.40;

our %Scores;

sub set_player_scores (%new_scores) {
    $Scores{$_} = $new_scores{$_} for keys %new_scores;
    return true;
}

sub get_player_score ($player) {
    return $Scores{$player};
}

sub increase_player_scores (%additional_scores) {
    while ( my ( $player, $score ) = each %additional_scores ) {
        $Scores{$player} += $score;
    }
    return true;
}

sub sort_players_by_name {
    my @player = sort keys %Scores;
    return @player;
}

sub sort_players_by_score {
    my @player = sort { $Scores{$b} <=> $Scores{$a} } keys %Scores;
    return @player;
}

sub delete_player ($player) {
    delete $Scores{$player};
    return true;
}

1;
