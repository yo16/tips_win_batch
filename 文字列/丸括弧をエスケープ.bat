rem 文字列に半角丸括弧があると、プログラムの丸括弧として展開してしまう対応

set AA="^)"

if 1==1 (
	rem ↓これで丸括弧をechoする
	echo %AA:"=%
	rem ↓これは実行される
	echo AA
) else (
	rem ↓これが実行されることを避ける
	echo BB
)

echo,
echo,
echo,



rem NGな例1
set BB=)
if 1==1 (
	rem ↓これで丸括弧をechoする
	echo %BB%
	rem ↓これは実行される
	echo AA
) else (
	rem ↓これが実行されることを避ける
	echo BB
)

rem NGな例2
set CC=^)
if 1==1 (
	rem ↓これで丸括弧をechoする
	echo %CC%
	rem ↓これは実行される
	echo AA
) else (
	rem ↓これが実行されることを避ける
	echo BB
)


pause
