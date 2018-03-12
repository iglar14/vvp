UNIT BlanksStateMachine;
INTERFACE
PROCEDURE Init;
PROCEDURE ProcessSymbol(Ch: CHAR; VAR F: TEXT);

IMPLEMENTATION
VAR
  State: CHAR;
  
PROCEDURE Init;
BEGIN {Init}
  State := 'B'
END; {Init}

PROCEDURE ProcessSymbol(Ch: CHAR; VAR F: TEXT);
BEGIN {ProcessSymbol}
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
      State := 'S'
END; {ProcessSymbol}

BEGIN {BlanksStateMachine}
  Init
END. {BlanksStateMachine}
