@echo off
echo Removendo ficheiros iniciados por "template." exceto "template.pdf" e "template.tex"...

REM Iterar por todos os ficheiros que começam com "template."
for %%F in (template.*) do (
    if not "%%F"=="template.pdf" if not "%%F"=="template.tex" (
        echo Apagando %%F...
        del "%%F"
    ) else (
        echo Mantendo %%F...
    )
)

echo Operacao concluida!
pause