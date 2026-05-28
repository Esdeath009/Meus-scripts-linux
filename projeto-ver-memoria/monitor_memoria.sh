#!/bin/bash

# 1. Pega o número de Megabytes de memória RAM que estão livres agora
MEMORIA_LIVRE=$(free -m | awk '/Mem:/ {print $4}')

# 2. Define o limite de alerta (Exemplo: 200 Megabytes)
LIMITE_ALERTA=200

echo "Memória livre atual: ${MEMORIA_LIVRE}MB"

# 3. A LÓGICA: SE a memória livre for MENOR que o limite...
if [ "$MEMORIA_LIVRE" -lt "$LIMITE_ALERTA" ]
then
    # ...faça isso se o servidor estiver em perigo:
    echo "[$(date)] ALERTA CRÍTICO: Memória RAM perigosamente baixa (${MEMORIA_LIVRE}MB)!" >> alerta_memoria.txt
    echo "Alerta gerado no arquivo alerta_memoria.txt!"
else
    # ...faça isso se estiver tudo bem:
    echo "Status do sistema: Tudo normal."
fi
