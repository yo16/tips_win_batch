rem http://fpcu.on.coocan.jp/dosvcmd/bbs/log/dir/1-0971.html

for /F %%a in ('dir /a:-d ^| find "個のファイル"') do set files=%%a
echo ファイルは %files% 個

pause
