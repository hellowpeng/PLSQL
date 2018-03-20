CREATE OR REPLACE FUNCTION bin_to_num1 (p_binstr VARCHAR2) RETURN NUMBER
IS
   l_len   NUMBER := LENGTH (p_binstr);
   r_num   NUMBER := 0;
BEGIN
   FOR i IN 1 .. l_len LOOP
      IF SUBSTR (p_binstr, i, 1) = '1' THEN
         r_num := r_num + POWER (2, l_len - i);
      END IF;
   END LOOP;

   RETURN r_num;
END bin_to_num1;
