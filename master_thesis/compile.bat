@echo off
echo pdf�t�@�C������
if not "%1"=="" goto IFT
echo ex. "test.tex" =^> "test"
set /p filename="�t�@�C��������:"
goto IFE
:IFT
set filename=%~n1
:IFE
echo %filename%
platex "%filename%.tex"
jbibtex "%filename%"
platex "%filename%.tex"
platex "%filename%.tex"
dvipdfmx "%filename%.dvi"
