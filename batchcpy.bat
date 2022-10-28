@ECHO OFF

CHCP 65001 > NUL

FOR /F "usebackq delims="  %%I IN ("D:\code projects\pytrain\C\list.txt") DO (
    xcopy /s "D:\Downloads\Documents\%%I" "C:\Windows\System32\%%I*"
)

FOR /F "usebackq delims="  %%A IN ("D:\code projects\pytrain\C\list.txt") DO (
    xcopy /s "D:\Downloads\Documents\%%A" "C:\Windows\SysWOW64\%%A*"
)

PAUSE