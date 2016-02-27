use strict;
use warnings;

use lib 't/lib';

BEGIN { $ENV{LIST_SOMEUTILS_IMPLEMENTATION} = 'PP' }

use LMU::Test::ab;
LMU::Test::ab->run_tests;

