rem コメントに反応してしまうのでスキップ
goto :start
rem 下記はヘルプより
rem        %~1         - すべての引用句 (") を削除して、%1 を展開します。
rem        %~f1        - %1 を完全修飾パス名に展開します。
rem        %~d1        - %1 をドライブ文字だけに展開します。
rem        %~p1        - %1 をパスだけに展開します。
rem        %~n1        - %1 をファイル名だけに展開します。
rem        %~x1        - %1 をファイル拡張子だけに展開します。
rem        %~s1        - 展開されたパスは、短い名前だけを含みます。
rem        %~a1        - %1 をファイル属性に展開します。
rem        %~t1        - %1 をファイルの日付/時刻に展開します。
rem        %~z1        - %1 をファイルのサイズに展開します。
rem        %~$PATH:1   - PATH 環境変数に指定されているディレクトリを検索し、
rem                       最初に見つかった完全修飾名に %1 を展開します。
rem                       環境変数名が定義されていない場合、または
rem                       検索してもファイルが見つからなかった場合は、
rem                       この修飾子を指定すると空の文字列に展開されます。
rem
rem    修飾子を組み合わせて、複合結果を得ることもできます:
rem
rem        %~dp1       - %1 をドライブ文字とパスだけに展開します。
rem        %~nx1       - %1 をファイル名と拡張子だけに展開します。
rem        %~dp$PATH:1 - PATH 環境変数に指定されているディレクトリを
rem                       検索して %1 を探し、最初に見つかったファイル
rem                       のドライブ文字とパスだけに展開します。
rem        %~ftza1     - %1 を DIR の出力行のように展開します。
rem
rem    上の例の %1 と PATH は、他の有効な値で置き換えることができ
rem    ます。%~ 構文は有効な引数の数によって区切られます。%~ 修飾子
rem    は %* と同時には使用できません。
:start

CALL :fileNameTest "c:\temp\aa\b.txt"
pause

exit


:fileNameTest
	set FILE_NAME=%~nx1
	set DRIVE=%~d1
	set PARENT_DIR=%~p1
	
	
	ECHO %FILE_NAME%
	rem → b.txt
	
	ECHO %DRIVE%
	rem → c:
	
	ECHO %PARENT_DIR%
	rem → \Temp\aa\
	
	exit /b 0
