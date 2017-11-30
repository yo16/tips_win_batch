rem よくある問題

set STR=
set ELM=A B C
for %%e in (%ELM%) do (
	set STR=%STR%-%%e
)

echo %STR%
rem -C

rem 原因
rem for文の()の中の変数は、forが呼び出されたときにすべて展開される。
rem つまりfor文が動くときには、%STR%は""なので、
rem for %%e in (A B C) do (set STR=-%%e )
rem として動作する。
rem 
rem %STR%は、その都度評価して欲しい、という内容が
rem この問題の発端。

pause



