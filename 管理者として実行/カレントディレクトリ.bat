rem バッチをコンテキストメニューから
rem 管理者として実行すると
rem カレントディレクトリがシステムディレクトリになる
rem その確認と対応
rem 2018 (c) yo16

echo %CD%
rem C:\Windows\system32

echo %~dp0
rem このバッチがあるフォルダ


rem 対応方法
rem ドライブが違っているかもしれないので
rem まずドライブを変更
%~d0
rem その次のフォルダを移動
cd %~dp0


pause
