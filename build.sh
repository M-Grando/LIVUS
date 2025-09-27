#!/bin/bash

# Garante que o diretório 'src' exista e contenha 'main.jsx'
if [ ! -d "src" ]; then
  echo "Erro: Diretório 'src' não encontrado!"
  exit 1
fi

if [ ! -f "src/main.jsx" ]; then
  echo "Erro: Arquivo 'src/main.jsx' não encontrado!"
  exit 1
fi

# Instala as dependências
pnpm install

# Executa o build do Vite
pnpm run build

# Verifica se o build foi bem-sucedido
if [ $? -ne 0 ]; then
  echo "Erro: O build do Vite falhou!"
  exit 1
fi

echo "Build concluído com sucesso!"

