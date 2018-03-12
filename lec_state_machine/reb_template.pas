PROGRAM RemoveExtraBlanks(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  State: CHAR; {Состояние: B - Начало, W - Слово, S - Пробелы}
BEGIN {RemoveExtraBlanks}
  Ch := ' '; {Инициализация}
  State := 'B';
  
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch)
    END;
  WRITELN
END. {RemoveExtraBlanks}
