PROGRAM RemoveExtraBlanks(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  State: CHAR; {���������: B - ������, W - �����, S - �������}
BEGIN {RemoveExtraBlanks}
  Ch := ' '; {�������������}
  State := 'B';
  
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch)
    END;
  WRITELN
END. {RemoveExtraBlanks}
