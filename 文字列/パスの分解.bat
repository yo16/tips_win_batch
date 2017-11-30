@echo off
set TEST1=D:\workspace\batch_SandBox\filename.bat
set TEST2="D:\workspace\batch_SandBox\filename.bat"
set TEST3=grep.exe
echo ■フルパス
call :GET_FILENAME %TEST1%
echo ■""でくくったファイルパス
call :GET_FILENAME %TEST2%
echo ■カレントにはなく、環境変数PATHに設定されてるディレクトリにあるコマンド
call :GET_FILENAME %TEST3%
GOTO :END

:GET_FILENAME
echo -オリジナル
echo     %1
echo -すべての引用句 (") を削除して、％変数 を展開します。
echo     %~1
echo -％変数 を完全修飾パス名に展開します。
echo     %~f1
echo -％変数 をドライブ文字だけに展開します。
echo     %~d1
echo -％変数 をパス名だけに展開します。
echo     %~p1
echo -％変数 をファイル名だけに展開します。
echo     %~n1
echo -％変数 をファイル拡張子だけに展開します。
echo     %~x1
echo -展開されたパスは短い名前だけを含みます。
echo     %~s1
echo -％変数 をファイルの属性に展開します。
echo     %~a1
echo -％変数 ファイルの日付/時刻に展開します。
echo     %~t1
echo -％変数 ファイルのサイズに展開します。
echo     %~z1
echo -PATH 環境％変数に指定されているディレクトリを  
echo  検索し、最初に見つかった完全修飾名に ％変数 を   
echo  展開します。                                 
echo  環境％変数名が定義されていない場合、または検索 
echo  してもファイルが見つからなかった場合は、この 
echo  修飾子を指定すると空の文字列に展開されます。
echo     %~$PATH:1
echo.
echo 修飾子を組み合わせて、複合結果を得ることもできます:
echo -％変数 をドライブ文字とパスだけに展開します。
echo     %~dp1
echo -％変数 をファイル名と拡張子だけに展開します。
echo     %~nx1
echo -％変数 を完全なパスと短い名前だけに展開します。
echo     %~fs1
echo -PATH 環境％変数に指定されているディレクトリを
echo  検索して ％変数 を探し、最初に見つかったファイル
echo  のドライブ文字とパスだけに展開します。
echo     %~dp$PATH:1
echo ％変数 を DIR コマンドの出力行のように展開します。
echo     %~ftza1
echo.
echo.
echo.
pause
