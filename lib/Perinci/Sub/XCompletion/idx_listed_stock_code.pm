package Perinci::Sub::XCompletion::idx_listed_stock_code;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;
use Log::ger;

our %SPEC;

$SPEC{gen_completion} = {
    v => 1.1,
};
sub gen_completion {
    require Complete::Finance::SE::IDX;

    my %fargs = @_;

    sub {
        my %cargs = @_;
        my $word    = $cargs{word} // '';
        #my $cmdline = $cargs{cmdline};
        #my $r       = $cargs{r};

        Complete::Finance::SE::IDX::complete_idx_listed_stock_code(word=>$word);
    };
}

1;
# ABSTRACT: Generate completion for listed stock code in the Indonesian Stock Exchange

=cut
