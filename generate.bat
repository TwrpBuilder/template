@echo off

set result=false

if not "%1" == "" if not "%2" == "" if not "%3" == "" (
	echo:%1 %2 %3
	set result=true
) 

if %result% == false (
	echo: You haven't specified one of the variables. Usage:
	echo: .\generate.bat [BRAND] [MODEL] [LINK]
	exit
)

copy xda tmp.txt
powershell -Command "(gc tmp.txt) -replace 'brand', '%1' | Out-File tmp.txt"
powershell -Command "(gc tmp.txt) -replace 'device', '%2' | Out-File tmp.txt"
powershell -Command "(gc tmp.txt) -replace 'link', '%3' | Out-File tmp.txt"
move tmp.txt "[RECOVERY][TWRPBUILDER] TWRP For %1 %2.txt"