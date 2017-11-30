rem !の変数は遅延環境変数なので
rem そのように展開する、という宣言。
rem これがあれば、単独でも遅延で展開される。
setlocal enabledelayedexpansion

set STR=
set ELM=A B C
for %%e in (%ELM%) do (
	set STR=!STR!-%%e
)

echo %STR%
rem echo -A-B-C

pause
