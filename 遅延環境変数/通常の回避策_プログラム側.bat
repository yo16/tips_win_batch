
set STR=
set ELM=A B C
for %%e in (%ELM%) do (
	set STR=!STR!-%%e
)

echo %STR%
rem 単体で実行すると
rem -C
rem /V:onで実行すると
rem -A-B-C

pause
