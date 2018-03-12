PROGRAM RemoveExtraBlanks(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  BeginFlag: CHAR; {Флаг, обозначающий начало строки}
  SpaceFlag: CHAR; {Флаг, обозначающий, что предыдущий символ - пробел}
BEGIN {RemoveExtraBlanks}
  {Инициализация}
  BeginFlag := 'T';
  SpaceFlag := 'F';
  
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      IF Ch <> ' '
      THEN
        BEGIN
          IF (SpaceFlag = 'T') AND (BeginFlag <> 'T')
          THEN
            WRITE(' ');
          WRITE(Ch);
          BeginFlag := 'F';
          SpaceFlag := 'F'
        END
      ELSE
        SpaceFlag := 'T'
    END;
  WRITELN
END. {RemoveExtraBlanks}
