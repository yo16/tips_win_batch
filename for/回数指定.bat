
rem /Lを入れると、()内は、start,step,end
for /L %%i IN ( 1,1,10 ) do (echo %%i)

rem /Lがないと、カンマ区切りの数分（下記例だと３回）
for %%i IN ( a,b,c ) do (echo %%i)



rem ちょっと特殊な書き方
for %%i IN (
a,
b,
c
) do (echo %%i)

pause
