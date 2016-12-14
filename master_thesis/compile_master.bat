@echo off
echo pdfファイル生成
set filename=master_kmatsui
echo %filename%
pdfclose --file %filename%.pdf
platex "%filename%.tex"
jbibtex "%filename%"
platex "%filename%.tex"
platex "%filename%.tex"
dvipdfmx "%filename%.dvi"
echo "%filename%.pdf"
rem start %filename%.pdf
pdfopen --file %filename%.pdf
