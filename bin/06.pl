#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Шифр Цезаря https://ru.wikipedia.org/wiki/%D0%A8%D0%B8%D1%84%D1%80_%D0%A6%D0%B5%D0%B7%D0%B0%D1%80%D1%8F

=head1 encode ($str, $key)

Функция шифрования ASCII строки $str ключем $key.
Пачатает зашифрованную строку $encoded_str в формате "$encoded_str\n"

Пример:

encode('#abc', 1) - печатает '$bcd'

=cut

sub encode {
    my ($str, $key) = @_;
    my $encoded_str = '';

    # ...
    # Алгоритм шифрования
    # ...

    print "$encoded_str\n";
}

=head1 decode ($encoded_str, $key)

Функция дешифрования ASCII строки $encoded_str ключем $key.
Пачатает дешифрованную строку $str в формате "$str\n"

Пример:


=cut

decode('$bcd', 1);
 # - печатает '#abc'
sub decode {
    my ($encoded_str, $key) = @_;
    my $str = '';
my $alpha = ' abcdefghijklmnopqrstuvwxyz';
my $res = '';
    for (my $i = 0; $i < length($encoded_str); $i++) {
        $res += $alpha[($alpha[$i] + $key) % length($encoded_str)]
    }
        print('Result: "' + res + '"')
    print "$str\n";
}
1;