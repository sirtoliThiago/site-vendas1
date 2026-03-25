@echo off
chcp 65001 >nul
color 0B
echo ==============================================================
echo           [ SITES MONEY 1 ] - INICIALIZAR GITHUB
echo ==============================================================
echo Este script vai criar um novo repositorio Git local
echo e conecta-lo ao seu novo repositorio vazio no GitHub.
echo.

echo 1. Inicializando Git...
git init

echo.
echo 2. Preparando arquivos...
git add .
git commit -m "Commit Inicial - Estrutura Html + Theme Blogger Prontos"
git branch -M main

echo.
echo 3. Conexao com o GitHub:
echo Para continuar, va no GitHub, crie um NOVO REPOSITORIO VAZIO.
echo Volte aqui e cole o link '.git' que ele vai gerar.
echo.
set /p gitlink="[Cole aqui a URL HTTPS do Repositorio]: "

git remote add origin %gitlink%

echo.
echo 4. Enviando arquivos para a nuvem...
git push -u origin main

echo.
echo ==============================================================
echo PROCESSO CONCLUIDO! O sistema local esta amarrado ao GitHub.
echo ==============================================================
pause
