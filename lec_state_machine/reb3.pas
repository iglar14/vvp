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
      READ(Ch);
      IF Ch <> ' '
      THEN
        BEGIN
          IF State = 'S'
          THEN
            WRITE(' ');
          WRITE(Ch);
          State := 'W'
        END
      ELSE
        IF State = 'W'
        THEN
          State := 'S'
    END;
  WRITELN
END. {RemoveExtraBlanks}
