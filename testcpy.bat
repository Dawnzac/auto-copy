@ECHO OFF

CHCP 65001 > NUL

FOR /F "usebackq delims="  %%I IN ("list.txt") DO (
    xcopy /s "D:\Downloads\Documents\%%I" "C:\Windows\System32\%%I*"
)

FOR /F "usebackq delims="  %%A IN ("list.txt") DO (
    xcopy /s "D:\Downloads\Documents\%%A" "C:\Windows\SysWOW64\%%A*"
)

PAUSE