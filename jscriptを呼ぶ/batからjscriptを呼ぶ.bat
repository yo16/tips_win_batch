@if(0)==(0) ECHO OFF

rem JScriptでは@if(0)だけを読み、
rem バッチでは@if(0)==(0)を読むことを利用している


echo バッチによる処理 開始

CScript //NoLogo //E:JScript "%~f0" %*

echo バッチによる処理 終了
pause
exit /b 0

@end

// ここからJScriptの処理
WScript.echo("JScriptの処理")

