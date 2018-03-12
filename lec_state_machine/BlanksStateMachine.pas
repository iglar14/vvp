UNIT BlanksStateMachine;
INTERFACE
PROCEDURE Init;
PROCEDURE ProcessSymbol(Ch: CHAR; VAR F: TEXT);

IMPLEMENTATION
VAR
  State: CHAR;
  
PROCEDURE Init;
BEGIN
  State := 'B'
END;

PROCEDURE ProcessSymbol(Ch: CHAR; VAR F: TEXT);
BEGIN
  IF Ch <> ' '
  THEN
    BEGIN
      IF State = 'S'
      THEN
        WRITE(F, ' ');
      WRITE(F, Ch);
      State := 'W';
    END
  ELSE
    IF State = 'W'
    THEN
      State := 'S';
END;

BEGIN
  Init;
END.
