create or replace function distance(lat1 in number,
                                    lon1 in number,
                                    lat2 in number,
                                    lon2 in number) return number is
begin
  return sqrt((((lon1 - lon2) * ACOS(-1) * 12656 *
              cos(((lon1 + lon2) / 2) * ACOS(-1) / 180) / 180) *
              ((lon1 - lon2) * ACOS(-1) * 12656 *
              cos(((lon1 + lon2) / 2) * ACOS(-1) / 180) / 180)) +
              (((lat1 - lat2) * ACOS(-1) * 12656 / 180) *
              ((lat1 - lat2) * ACOS(-1) * 12656 / 180)));
end;
