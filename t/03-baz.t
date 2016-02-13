use strict;
use warnings;
use Test::More;

use lib 't/lib';

use Foo plugins => ['Baz'];
use Foo::A;
use Foo::B;

can_ok( 'Foo::A', 'a' );
ok( !Foo::A->can('bar_a'), 'no Foo::A->bar_b' );

can_ok( 'Foo::B', 'b' );
can_ok( 'Foo::B', 'baz_b' );

done_testing;
