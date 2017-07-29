unit class Symbol;
use UUID;

has Str $.name;
has UUID $!uuid;

multi method new(Str $name) { samewith :$name }

submethod WHICH { $!uuid //= UUID.new }
