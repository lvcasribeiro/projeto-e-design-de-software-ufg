@echo off
chcp 65001

set FILE=%TEMP%\plantuml-1.2025.3.jar
set URL=https://github.com/plantuml/plantuml/releases/download/v1.2025.3/plantuml-1.2025.3.jar

:: Verifica se o arquivo existe
if exist "%FILE%" (
    echo Plantuml disponível.
) else (
    echo O arquivo %FILE% não existe. Baixando...
    powershell -Command "Invoke-WebRequest -Uri %URL% -OutFile '%FILE%'"
    echo Download concluído.
)

echo Produzindo arquivos PNG a partir de arquivos PlantUML (recursivamente). Aguarde ...
:: Usa -checkmetadata para evitar regeneração desnecessária
:: Usa -nometadata para remover metadados dos PNG
for /r %%f in (*.puml) do (
    java -jar "%FILE%" -checkmetadata -nometadata "%%f"
)
echo Geração de arquivos concluída.
