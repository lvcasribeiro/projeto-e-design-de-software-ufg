#!/bin/bash

FILE="/tmp/plantuml-1.2025.3.jar"
URL="https://github.com/plantuml/plantuml/releases/download/v1.2025.3/plantuml-1.2025.3.jar"

# Verifica se o arquivo existe
if [ -f "$FILE" ]; then
    echo "Plantuml disponível."
else
    echo "O arquivo $FILE não existe. Baixando..."
    http --download "$URL"
    mv plantuml-1.2025.3.jar /tmp
    echo "Download concluído."
fi

echo "Produzindo arquivos PNG a partir de arquivos PlantUML (recursivamente). Aguarde ..."
# Usa -checkmetadata para evitar regeneração desnecessária
# Usa -nometadata para remover metadados dos PNG
find . -name "*.puml" -print0 | xargs -0 java -jar "$FILE" -checkmetadata -nometadata
echo "Geração de arquivos concluída."
