use strict;
use warnings;

use lib 't/lib';

BEGIN { $ENV{LIST_SOMEUTILS_IMPLEMENTATION} = 'PP' }

use LMU::Test::Functions;
LMU::Test::Functions->run_tests;

