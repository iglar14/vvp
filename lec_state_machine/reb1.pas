PROGRAM RemoveExtraBlanks;
VAR
  Ch: CHAR;
BEGIN
  Ch := ' ';
  WHILE (NOT EOLN) AND (Ch = ' ')
  DO
    BEGIN
      READ(Ch);
      IF Ch <> ' '
      THEN
        WRITE(Ch);
    END;
  WHILE NOT EOLN
  DO
    BEGIN
      WHILE (NOT EOLN) AND (Ch <> ' ')
      DO
        BEGIN
          READ(Ch);
          IF Ch <> ' '
          THEN
            WRITE(Ch)
        END;
      WHILE (NOT EOLN) AND (Ch = ' ')
      DO
        BEGIN
          READ(Ch);
          IF Ch <> ' '
          THEN
            WRITE(' ', Ch);
        END;
    END;
  WRITELN;
END.
