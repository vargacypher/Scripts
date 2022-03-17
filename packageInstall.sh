#!/bin/bash

if [[ "$USER" != "root" ]]; then
   echo "Necessita acesso root"
   exit
fi

echo "
1) Atualizar Sistema
2) Instalar Programa
3) Remover Programa
4) Sair
"
read opcao

case "$opcao" in
    1)sudo apt-get update ;;
    2)
      echo "O que deseja instalar?"
      read pacote
      apt install "$pacote" ;;

    3)
      echo "Qual programa deseja remover?"
      read pacote
      apt remove "$pacote" ;;
    4)
      echo "Até mais"  
      exit ;;
esac
