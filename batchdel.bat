@ECHO OFF

CHCP 65001 > NUL

FOR /F "usebackq delims="  %%I IN ("{path to }\list.txt") DO (
    del /s "C:\Windows\System32\%%I*"
)

FOR /F "usebackq delims="  %%I IN ("{path to }\list.txt") DO (
    del /s "C:\Windows\SysWOW64\%%I*"
)

PAUSE
