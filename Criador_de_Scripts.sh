#!/usr/bin/env bash

# Nome do Script: Criador_de_Scripts.sh

# Criador: DevGuilhermeAlves
# Mantenedor: DevGuilhermeAlves
# Versão: 1.0
# Ultima atualização: 06/04/2022 

# ================================================================================= #

SHEBANG="#!/usr/bin/env bash"


    [ "$*" = "exit" ] && exit # Uma condição simples, se o usuário digitar exit ao lado do nome "cds" o script irá sair


            if [ -n "$*" ]; then

                touch "$*".sh && echo "$SHEBANG" > "$*".sh && chmod +x "$*".sh && echo -ne "$*".sh,"Criado com sucesso! \n" && exit # Nesta condição ele irá criar o script junto com a extensão .sh e então colocar o SHEBANG na primeira linha, feito isso ele irá conceder as permissões de execução necessárias

            fi

# ================================================================================= #

# Se a pessoa preferir entrar diretamente no script

    
                echo -ne "Enter the name of the script:" && read "NAME"

            if [ $NAME = "exit" ]; then

                exit

            else

                touch "$NAME".sh && echo "$SHEBANG" > "$NAME".sh && chmod +x "$NAME".sh && echo -ne "$NAME".sh, "Criado com sucesso! \n"

            fi

# ================================================================================= #