unit class Symbol;
use UUID;

has Str $.name;
has UUID $!uuid handles <WHICH>;
submethod BUILD { $!uuid .= new }
