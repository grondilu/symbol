use Test;
use Symbol;

my Symbol $foo1 .= new: "foo";
my Symbol $foo2 .= new: "foo";

my %hash;
%hash<foo> = "bar";
%hash{$foo1} = "bar!";
%hash{$foo2} = "bar!!";

plan 3;

isnt %hash<foo>, %hash{$foo1};
isnt %hash<foo>, %hash{$foo2};
isnt $foo1, $foo2;



