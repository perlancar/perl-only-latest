#!perl

use strict;
use warnings;
use Test::More;

use FindBin '$Bin';
use lib "$Bin/lib1", "$Bin/t/lib1";
use lib "$Bin/lib2", "$Bin/t/lib2";

use only::latest 'Foo', qr/^Ba[r]/;

use Foo; # lib2's is newer
use Bar; # lib1's is newer
use Baz; # lib1's is newer, but will use lib2

is($Foo::VERSION, 0.2, "Foo loaded from lib2");
is($Bar::VERSION, 0.2, "Bar loaded from lib1");
is($Baz::VERSION, 0.1, "Baz loaded from lib2");

done_testing();
