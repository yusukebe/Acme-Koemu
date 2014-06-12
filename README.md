# NAME

Acme::Koemu - All about koemu.

# SYNOPSIS

    use Acme::Koemu;
    use feature qw/say/;
    my $koemu = Acme::Koemu->new();
    say $koemu->name();

# DESCRIPTION

Acme::Koemu は2014年6月14日のためにつくられたモジュールです。
こえむの全てをプログラムで表現しています。

# METHODS

## name

こえむの英字ニックネームを返します。

    $koemu->name();

## is\_drunk

こえむはお酒が大好き。それに加えて酔っ払っているとしつこいので、その状態を真偽値で判断します。



    say '落ちつけ！' if $koemu->is_drunk();

## go\_to\_party

こえむが飲みに行きます。引数に飲み会での役割を文字列で与えるとその通りキッチリ仕事する場合があります。

    $koemu->go_to_party();

## love

こえむには愛する人がいます。引数にその人の名前を与えると、果たして本当に__LOVE__なのか？を真偽値で判断します。

    $koemu->love('誰かさん');

# LICENSE

Copyright (C) Yusuke Wada.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Yusuke Wada <yusuke@kamawada.com>
