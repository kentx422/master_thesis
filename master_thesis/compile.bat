@echo off
echo pdfファイル生成
if not "%1"=="" goto IFT
echo ex. "test.tex" =^> "test"
set /p filename="ファイル名入力:"
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
