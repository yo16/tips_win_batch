rem 呼び出され.batを/V:onで呼び出して、cmd.exeを実行する
rem 呼び出した後(コマンド終了後)にcmdを終了する。

cmd /V:on /C call 通常の回避策_プログラム側.bat %CD%

pause
