set /p VAL=文字を入力してください

if "%VAL%" == "" (
echo 空です
) else (
echo "%VAL%"
)
pause
