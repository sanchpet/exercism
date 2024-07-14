package Anagram;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<match_anagrams>;

sub match_anagrams ( $subject, $candidates ) {
    my @result;
    foreach my $candidate (@{$candidates}) {
        push @result, $candidate;
        if ( uc($candidate) eq uc($subject)) {
            pop(@result);
            $candidate="";
        }
        foreach my $char (split //, uc($subject)) {
            if (uc($candidate)  !~ /$char/) {
                pop(@result);
                $candidate = "";
                last;
            }
            $candidate =~ s/$char//i;
        }
        if (length($candidate) != 0) {
            pop(@result);
        }
    }
    return \@result;
}

1;
