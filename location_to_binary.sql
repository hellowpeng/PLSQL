create or replace function location_to_binary(i_value     in number,
                                              i_type      in number,
                                              i_precision in number := 12)
  return varchar2 is
  min_value   number := 0;
  max_value   number := 0;
  mid_value   number := 0;
  bin_str     varchar2(50) := '';
  v_precision number := i_precision;
begin

  -- 判断数值类型
  if i_type = 1 then
    -- 经度
    min_value := -180;
    max_value := 180;
  elsif i_type = 2 then
    -- 纬度
    min_value := -90;
    max_value := 90;
  else
    return 0;
  end if;

  loop
    exit when v_precision = 0;
    mid_value := (min_value + max_value) / 2;
    if i_value >= mid_value then
      bin_str   := bin_str || '1';
      min_value := mid_value;
    else
      bin_str   := bin_str || '0';
      max_value := mid_value;
    end if;

    v_precision := v_precision - 1;
  end loop;
  return bin_str;
end;
