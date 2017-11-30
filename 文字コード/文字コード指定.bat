@echo off

rem This file is written by UTF-8!

rem コマンドプロンプトはデフォルトでshift_jisだけど
rem pythonなどで、utf-8で出したいことがあるため、
rem その変更方法

rem chcp コードページ番号
rem 437      IBM437        OEM United States
rem 932      shift_jis     ANSI/OEM Japanese; Japanese (Shift-JIS)
rem 1200     utf-16        Unicode UTF-16, little endian byte order (BMP of ISO 10646);
rem                        available only to managed applications
rem 20127    us-ascii      US-ASCII (7-bit)
rem 20932    EUC-JP        Japanese (JIS 0208-1990 and 0121-1990)
rem 50220    iso-2022-jp   ISO 2022 Japanese with no halfwidth Katakana;
rem                        Japanese (JIS)
rem 50222    iso-2022-jp   ISO 2022 Japanese JIS X 0201-1989;
rem                        Japanese (JIS-Allow 1 byte Kana - SO/SI)
rem 51932    euc-jp        EUC Japanese
rem 65001    utf-8         Unicode (UTF-8)

chcp 65001
echo,このファイルはutf-8で書かれています
rem ↑エラーにはならないけど、出せない
rem プログラムで出すものは出せる


pause
