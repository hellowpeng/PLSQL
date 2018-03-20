create or replace function geohash_encode(longitude in varchar2, -- 经度
                                          latitude  in varchar2) -- 纬度
 return varchar2 is
  full_bin_str  varchar2(100) := '';
  full_code_str varchar2(20) := '';
  code_str      varchar2(1) := '';
  lon_split_str varchar2(1) := ''; -- 经度
  lat_split_str varchar2(1) := ''; -- 纬度
  i             number := 1;
  v_len         number := 0;
begin
  -- 二进制位交叉合并 偶数位放经度，奇数位放纬度，注意位数从0开始，算偶数位
  v_len := length(longitude);
  loop
    lat_split_str := substr(latitude, i, 1);
    lon_split_str := substr(longitude, i, 1);
    full_bin_str  := full_bin_str || lon_split_str || lat_split_str;
    i             := i + 1;
    exit when i > v_len;
  end loop;

  -- 每五位生成base32编码
  i     := 1;
  v_len := length(full_bin_str);
  loop
    code_str      := base32_map(bin_to_num1(substr(full_bin_str, i, 5)));
    full_code_str := full_code_str || code_str;
    i             := i + 5;
    exit when i > v_len;
  end loop;
  return full_code_str;
end;
