#!perl

use strict;
use warnings;
use Test::More;

use FindBin '$Bin';
use lib "$Bin/lib1", "$Bin/t/lib1";
use lib "$Bin/lib2", "$Bin/t/lib2";

use only::latest;

use Foo;
ok(!ref($INC{"Foo"}), "\$INC{Foo} set to path");

done_testing();
