# Declare package 'Bob'
package Bob;
use strict;
use warnings;
use JSON::PP;
use Exporter qw<import>;
our @EXPORT_OK = qw<hey>;

my $chat = do { local $/; JSON::PP->new->decode(<DATA>) };

sub hey {
    my ($msg) = @_;
    return $chat->{$msg};
}

1;

__DATA__
{
   "" : "Fine. Be that way!",
   "1, 2, 3 GO!" : "Whoa, chill out!",
   "fffbbcbeab?" : "Sure.",
   ":) ?" : "Sure.",
   "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!" : "Whoa, chill out!",
   "WATCH OUT!" : "Whoa, chill out!",
   "WHAT'S GOING ON?" : "Calm down, I know what I'm doing!",
   "\t\t\t\t\t\t\t\t\t\t" : "Fine. Be that way!",
   "          " : "Fine. Be that way!",
   "You are, what, like 15?" : "Sure.",
   "I HATE THE DENTIST" : "Whoa, chill out!",
   "Tom-ay-to, tom-aaaah-to." : "Whatever.",
   "Does this cryogenic chamber make me look fat?" : "Sure.",
   "Wait! Hang on. Are you going to be OK?" : "Sure.",
   "Okay if like my  spacebar  quite a bit?   " : "Sure.",
   "1, 2, 3" : "Whatever.",
   "Ending with ? means a question." : "Whatever.",
   "\n\r \t" : "Fine. Be that way!",
   "This is a statement ending with whitespace      " : "Whatever.",
   "It's OK if you don't want to go work for NASA." : "Whatever.",
   "4?" : "Sure.",
   "\nDoes this cryogenic chamber make me look fat?\nNo." : "Whatever.",
   "FCECDFCAAB" : "Whoa, chill out!",
   "Hi there!" : "Whatever.",
   "         hmmmmmmm..." : "Whatever."
}
