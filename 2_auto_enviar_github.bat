@echo off
chcp 65001 >nul
color 0A
echo ==============================================================
echo         [ SITES MONEY 1 ] - ENVIO RAPIDO GITHUB
echo ==============================================================
echo.
echo Analisando alteracoes no projeto...
git status -s
echo.

set /p msg="[O que foi alterado nesta versao?]: "
if "%msg%"=="" set msg="Atualizacao automatica pelo script rapido"

echo.
echo 1. Adicionando arquivos...
git add .

echo 2. Registrando versao (Commit)...
git commit -m "%msg%"

echo 3. Enviando para o GitHub...
git push

echo.
echo ==============================================================
echo ENVIO CONCLUIDO COM SUCESSO!
echo ==============================================================
pause
