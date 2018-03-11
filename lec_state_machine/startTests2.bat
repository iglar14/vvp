@CALL CleanTests.bat
@FOR %%f in (*.test) DO CALL StartTest.bat %1 %%f
