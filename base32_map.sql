create or replace function base32_map(i_value in number) return varchar2 is
begin
  if i_value between 0 and 9 then
    return to_char(i_value);
  elsif i_value = 10 then
    return 'b';
  elsif i_value = 11 then
    return 'c';
  elsif i_value = 12 then
    return 'd';
  elsif i_value = 13 then
    return 'e';
  elsif i_value = 14 then
    return 'f';
  elsif i_value = 15 then
    return 'g';
  elsif i_value = 16 then
    return 'h';
  elsif i_value = 17 then
    return 'j';
  elsif i_value = 18 then
    return 'k';
  elsif i_value = 19 then
    return 'm';
  elsif i_value = 20 then
    return 'n';
  elsif i_value = 21 then
    return 'p';
  elsif i_value = 22 then
    return 'q';
  elsif i_value = 23 then
    return 'r';
  elsif i_value = 24 then
    return 's';
  elsif i_value = 25 then
    return 't';
  elsif i_value = 26 then
    return 'u';
  elsif i_value = 27 then
    return 'v';
  elsif i_value = 28 then
    return 'w';
  elsif i_value = 29 then
    return 'x';
  elsif i_value = 30 then
    return 'y';
  elsif i_value = 31 then
    return 'z';
  else
    return null;
  end if;
end;
