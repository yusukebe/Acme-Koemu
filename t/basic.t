use strict;
use Test::More;
use Acme::Koemu;

my $koemu = Acme::Koemu->new();
ok $koemu;
isa_ok $koemu, 'Acme::Koemu';
is $koemu->name, 'koemu';
ok !$koemu->is_drunk();
$koemu->go_to_party();
ok $koemu->is_drunk();
$koemu->go_to_party('kanji');
ok !$koemu->is_drunk();
ok !$koemu->love();
ok !$koemu->love('nyontan');
ok $koemu->love('megumi');

done_testing();
