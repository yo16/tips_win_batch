rem http://fpcu.on.coocan.jp/dosvcmd/bbs/log/dir/1-0971.html

for /F %%a in ('dir /a:-d ^| find "�̃t�@�C��"') do set files=%%a
echo �t�@�C���� %files% ��

pause
