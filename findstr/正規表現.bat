rem ��ʓI�Ȑ��K�\�������ׂĎg����Ƃ����킯�ł͂Ȃ����Ƃɒ���
rem �悭�g������
rem �L���i�g������́j
rem .+*^$
rem �����i�g���Ȃ����́j
rem [a-z]�A[0-9]���܂ށA[]

echo,aa>sample.txt
echo,bb>>sample.txt
echo,cc>>sample.txt
echo,xxaa>>sample.txt
echo,xxbb>>sample.txt
echo,xxc>>sample.txt
echo,>>sample.txt
echo,yyaa>>sample.txt
echo,zzbb>>sample.txt
echo,abcdefg>>sample.txt
echo,abc>>sample.txt
echo,abceee>>sample.txt
echo,>>sample.txt
echo,abc1234>>sample.txt
echo,>>sample.txt
echo,>>sample.txt
echo,aaa\bbb\ccc>>sample.txt


findstr /r "b.c" sample.txt
rem aaa\bbb\ccc
	rem .�͗L��

findstr /r "c.f" sample.txt
rem �i�Ȃ��j
	rem abcdefg���q�b�g����̂��m�F�B
	rem .�͂P���������Ȃ̂Łucdef�v�̓q�b�g���Ȃ��Bok�B

findstr /r "c.+f" sample.txt
rem �i�Ȃ��j
	rem +�͖���

findstr /r "c.*f" sample.txt
rem abcdefg
	rem *��n��

findstr /r "cx*1" sample.txt
rem abc1234
	rem *��0��ł��q�b�g�Bok�B

findstr /r "[a-z]+" sample.txt
rem �i�Ȃ��j
	rem [a-z]�͖���

findstr /r "[0-9]+" sample.txt
rem �i�Ȃ��j
	rem [0-9]�͖���

findstr /r "[abc]+" sample.txt
rem �i�Ȃ��j
	rem []���̂������炵��

findstr /r "^a" sample.txt
rem aa
rem abcdefg
rem abc
rem abceee
	rem yyaa�̓q�b�g���Ă��Ȃ��B
	rem ^�͗L��

findstr /r "a$" sample.txt
rem aa
rem xxaa
rem yyaa
	rem $�͗L��

pause
