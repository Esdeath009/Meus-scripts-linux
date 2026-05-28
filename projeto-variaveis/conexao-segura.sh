#!/bin/bash

echo "=== Iniciando conexão com o Banco de Dados da AWS ==="

# A LOGICA: SE a variável de ambiente chamada 'SENHA_BANCO' estiver VAZIA (-z significa vazia)...
if [ -z "$SENHA_BANCO" ]
then
    # ...faça isso se a senha não for encontrada no sistema:
    echo "[ERRO]: A senha não foi encontrada na memória do Linux!"
    echo "Conexão abortada por motivos de segurança."
    exit 1
else
    # ...faça isso se a senha estiver salva em segurança na memória:
    echo "Sucesso! Senha encontrada na memória do sistema."
    echo "Conectando ao banco de dados utilizando a credencial oculta..."
    # Aqui simulamos o uso da senha sem mostrá-la na tela por completo
    echo "Conexão estabelecida com sucesso!"
fi
