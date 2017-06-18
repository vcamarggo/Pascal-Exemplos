Program ASCTECLAS ;
var
tecla : char;
Begin
  repeat
    tecla:= readkey;
    writeln(ord(tecla));
  until tecla='S';
end.
