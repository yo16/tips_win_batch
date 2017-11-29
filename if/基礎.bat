rem if文の基礎


rem 一致（文字列）
if "a" == "a" echo 一致！

rem 不一致
if not "a" == "z" echo 不一致。。

rem 複数行
if "a" == "a" (
	echo 一致
	echo しました！
)

rem else
if "a" == "z" echo 一致！ else echo 不一致

rem 複数行とelse
if "a" == "z" (
	echo 一致！
) else (
	echo 不
	echo 一
	echo 致
)



if 5 LEQ 10 IF 10 LEQ 15 (
	echo 範囲内です
)

pause
