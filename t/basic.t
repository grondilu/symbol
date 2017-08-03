use Test;
use Symbol;

my Symbol $foo1 .= new: name => "foo";
my Symbol $foo2 .= new: name => "foo";

my %hash;
%hash<foo> = "bar";
%hash{$foo1} = "bar!";
%hash{$foo2} = "bar!!";

plan 3;

isnt %hash<foo>, %hash{$foo1};
isnt %hash<foo>, %hash{$foo2};
isnt $foo1, $foo2;



