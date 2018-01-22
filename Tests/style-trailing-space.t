#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 1;

use Test::TrailingSpace ();

my $finder = Test::TrailingSpace->new(
    {
        root => '.',
        filename_regex =>
            qr/(?:(?:\.(?:[a-zA-Z0-9]+))|README|Changes|LICENSE|MANIFEST)\z/,
    },
);

# TEST
$finder->no_trailing_space("No trailing space was found.");
