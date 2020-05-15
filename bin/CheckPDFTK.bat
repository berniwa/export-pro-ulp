ECHO OFF

FOR /F "tokens=* USEBACKQ" %%F IN (`WHERE pdftk`) DO (
	IF EXIST "%%F" (
		GOTO tr;
	) 
)
ECHO pdftk is not installed
::pause
EXIT -1

:tr
ECHO pdftk is installed
::pause
EXIT 0
