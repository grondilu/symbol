unit class Symbol;
use UUID;

has Str $.name;
has UUID $!uuid;

multi method new(Str $name) { ::?CLASS.new: :$name }

submethod WHICH { $!uuid //= UUID.new }
