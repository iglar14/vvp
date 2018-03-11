PROGRAM RemoveExtraBlanks;
VAR
  Ch: CHAR;
BEGIN {RemoveExtraBlanks}
  Ch := ' '; {»нициализаци€}
  
  {„итаем пробелы в начале строки}
  WHILE (NOT EOLN) AND (Ch = ' ')
  DO
    READ(Ch);
  IF Ch <> ' '
  THEN
    WRITE(Ch);
    
  WHILE NOT EOLN
  DO
    BEGIN
      {„итаем слово и выводим его}
      WHILE (NOT EOLN) AND (Ch <> ' ')
      DO
        BEGIN
          READ(Ch);
          IF Ch <> ' '
          THEN
            WRITE(Ch)
        END;
        
      {„итаем пробелы до следующего слова или до конца строки}
      WHILE (NOT EOLN) AND (Ch = ' ')
      DO
        READ(Ch);
        
      {≈сли встретилс€ не пробел, то это начало следующего слова}
      IF Ch <> ' '
      THEN
        WRITE(' ', Ch); {ставим пробел перед словом}
    END;
  WRITELN;
END.  {RemoveExtraBlanks}
