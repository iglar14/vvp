PROGRAM RemoveExtraBlanks;
VAR
  Ch: CHAR;
BEGIN {RemoveExtraBlanks}
  Ch := ' '; {�������������}
  
  {������ ������� � ������ ������}
  WHILE (NOT EOLN) AND (Ch = ' ')
  DO
    READ(Ch);
  IF Ch <> ' '
  THEN
    WRITE(Ch);
    
  WHILE NOT EOLN
  DO
    BEGIN
      {������ ����� � ������� ���}
      WHILE (NOT EOLN) AND (Ch <> ' ')
      DO
        BEGIN
          READ(Ch);
          IF Ch <> ' '
          THEN
            WRITE(Ch)
        END;
        
      {������ ������� �� ���������� ����� ��� �� ����� ������}
      WHILE (NOT EOLN) AND (Ch = ' ')
      DO
        READ(Ch);
        
      {���� ���������� �� ������, �� ��� ������ ���������� �����}
      IF Ch <> ' '
      THEN
        WRITE(' ', Ch); {������ ������ ����� ������}
    END;
  WRITELN;
END.  {RemoveExtraBlanks}
