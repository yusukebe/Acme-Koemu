package Acme::Koemu;
use Moo;
our $VERSION = "0.01";

has 'name' => ( is => 'ro', default => sub { 'koemu' } );
has 'is_drunk' => ( is => 'rw', default => sub { 0 }  );

sub go_to_party {
    my ($self, $as) = @_;
    if( $as && $as =~ m!^kanji$!i ) {
        $self->is_drunk(0);
    }else{
        $self->is_drunk(1);
    }
    return;
}

sub love {
    my ($self, $to) = @_;
    return unless $to;
    return $to =~ m!^megumi$!i;
}

1;

__END__

=encoding utf-8

=head1 NAME

Acme::Koemu - All about koemu.

=head1 SYNOPSIS

    use Acme::Koemu;
    use feature qw/say/;
    my $koemu = Acme::Koemu->new();
    say $koemu->name();

=head1 DESCRIPTION

Acme::Koemu は2014年6月14日のためにつくられたモジュールです。
こえむの全てをプログラムで表現しています。

=head1 METHODS

=head2 name

こえむの英字ニックネームを返します。

    $koemu->name();

=head2 is_drunk

こえむはお酒が大好き。それに加えて酔っ払っているとしつこいので、その状態を真偽値で判断します。


    say '落ちつけ！' if $koemu->is_drunk();

=head2 go_to_party

こえむが飲みに行きます。引数に飲み会での役割を文字列で与えるとその通りキッチリ仕事する場合があります。

    $koemu->go_to_party();

=head2 love

こえむには愛する人がいます。引数にその人の名前を与えると、果たして本当にB<LOVE>なのか？を真偽値で判断します。

    $koemu->love('誰かさん');

=head1 LICENSE

Copyright (C) Yusuke Wada.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Yusuke Wada E<lt>yusuke@kamawada.comE<gt>

=cut

