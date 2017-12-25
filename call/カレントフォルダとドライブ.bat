@echo off

rem カレントフォルダとドライブを取得
rem 2017 (c) yo16

rem 管理者として実行すると、C:\Windows\system32がカレントドライブになるが
rem ファイルがある場所をカレントドライブとして使いたい場合などに使用する。

echo %~d0
rem Dドライブの場合
rem → D:
rem これを利用して、
%~d0
rem と書いておくと、ファイルがあるドライブへ移動される


echo %~dp0
rem batファイルのパスが D:\temp\batch.bat の場合、
rem → D:\temp\
rem これを利用して、
cd %~dp0
rem と書いておくと、ファイルがあるフォルダへ移動される

rem 上記は管理者として実行しない場合＝カレントフォルダがbatファイルの場所の場合
rem では、特になにも起こらず、無害。

pause
