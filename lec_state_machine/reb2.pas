PROGRAM RemoveExtraBlanks(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  BeginFlag: CHAR; {����, ������������ ������ ������}
  SpaceFlag: CHAR; {����, ������������, ��� ���������� ������ - ������}
BEGIN {RemoveExtraBlanks}
  {�������������}
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
