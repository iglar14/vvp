PROGRAM RemoveExtraBlanks;
USES BlanksStateMachine;
VAR
  Ch: CHAR;
BEGIN {RemoveExtraBlanks}
  WHILE (NOT EOLN)
  DO
    BEGIN
      READ(Ch);
      ProcessSymbol(Ch, OUTPUT);
    END;
  WRITELN;
END.  {RemoveExtraBlanks}
