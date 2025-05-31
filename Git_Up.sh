#!/bin/bash
clear

# Cores
RED='\033[1;91m'
GREEN='\033[1;92m'
YELLOW='\033[1;93m'
BLUE='\033[1;94m'
NC='\033[0m' # No Color

function titulo() {
    echo -e "\e[1;93m    ______ _  __   __           __         __  __      \e[0m"
    echo -e "\e[1;9m   / ____/(_)/ /_ / /_  __  __ / /_       / / / /____   \e[0m"
    echo -e "\e[1;93m  / / __ / // __// __ \/ / / // __ \     / / / // __ \  \e[0m"
    echo -e "\e[1;9m / /_/ // // /_ / / / / /_/ // /_/ /    / /_/ // /_/ /  \e[0m"
    echo -e "\e[1;93m \____//_/ \__//_/ /_/\__,_//_.___/_____\____// .___/   \e[0m"
    echo -e "\e[1;9m                                  /_____/    /_/       \e[0m"
    echo -e "\e[1;91m Versao 1.3 \e[0m"
    echo ""
    echo -e "\e[1;9m                Qual comando?                     \e[0m"
    echo ""
    echo -e "\e[1;93m           [\e[0m""\e[1;9m01""\e[1;93m] Permissão a pasta                      \e[0m"
    echo -e "\e[1;93m           [\e[0m""\e[1;9m02""\e[1;93m] Apagar a linha de tempo .git           \e[0m"
    echo -e "\e[1;93m           [\e[0m""\e[1;9m03""\e[1;93m] Iniciar uma linha de tempo             \e[0m"
    echo -e "\e[1;93m           [\e[0m""\e[1;9m04""\e[1;93m] Atualizar projeto add .                \e[0m"
    echo -e "\e[1;93m           [\e[0m""\e[1;9m05""\e[1;93m] Atualizar email de acesso              \e[0m"
    #echo -e "\e[1;93m          [\e[0m""\e[1;9m06""\e[1;93m] Atualizar email de acesso              \e[0m"
    echo ""
    read -p $'\e[1;9m[*] Qual option: \e[0m' dado

    if [ "$dado" -eq 1 ];
    then
        1_Permissao
    elif [ "$dado" -eq 2 ];
    then
        2_apaga_git
    elif [ "$dado" -eq 3 ];
    then
        3_inicio_git
    elif [ "$dado" -eq 4 ];
    then
        4_atualiza_git
    else
        5_emailG
    fi
}

function 1_Permissao() {
    sudo chown -R -v "ascoid" /Git_Up
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m!""\e[1;93m] Permissão efetuada  \e[0m"
}

function 2_apaga_git() {
    # Apaga o .git para iniciar um novo
    sudo rm -r .git
    echo -e "\e[1;93m         [\e[0m""\e[1;9m!""\e[1;93m] Apagado ""\e[1;9m.git"" \e[0m"
}

function 3_inicio_git() {

    # Inicio de um nova linha de tempo
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Iniciado init\e[0m"
    git init
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Iniciado add .\e[0m"
    read -p $'\e[1;9m[*] Qual Local: \e[0m' loc
    git add "$loc"
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Qual comentario do commit?\e[0m"
    read -p $'\e[1;9m[*] Qual option: \e[0m' commit
    echo ""
    #echo -e "\e[1;93m         ?[?\e[0m""\e[1;9m?+?""\e[1;93m?]? Qual linha \e[0m""\e[1;9m?1?""\e[1;93m ?[?\e[0m""\e[1;9m?main?""\e[1;93m?]? or \e[0m""\e[1;9m?2?""\e[1;93m [\e[0m""\e[1;9m ??master??""\e[1;93m??]??\e[0m"
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Qual linha \e[0m""\e[1;9m1""\e[1;93m [\e[0m""\e[1;9mmain""\e[1;93m] or \e[0m""\e[1;9m2""\e[1;93m [\e[0m""\e[1;9mmaster""\e[1;93m]\e[0m"
    read -p $'\e[1;9m[*] Qual option: \e[0m' origen

    if [ "$origen" -eq 1 ];
    then
        origen="main"
    else
        origen="master"
    fi

    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Iniciado commit\e[0m"
    git commit -m "$commit"
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Iniado branch -M [ $origen ]\e[0m"
    git branch -M main
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Qual diretorio remoto?\e[0m"
    read -p $'\e[1;9m[*] Qual option: \e[0m' gitlocal
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Iniciado remote add origin\e[0m"
    git remote add origin "$gitlocal"
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Iniciado push -f origen\e[0m"
    git push -f origin main
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] CONCLUIDO!\e[0m"
    echo ""
}

function 4_atualiza_git() {
    # Atualizaçao simples de envio/atualzaçao
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Iniciado add \e[0m"
    
    read -p $'\e[1;9m[*] Qual Local: \e[0m' loc
    git add "$loc"
    
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Pasta remora de Origin  \e[0m"
    git remote -v 
    
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Qual mudar a Origin? [s] ou [n]  \e[0m"
    read -p $'\e[1;9m[*] Qual option: \e[0m' res
    echo ""

    if [ $res = "s" ];
    then
        echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Qual origin? exp.git@github.com:Ascoid/Doc.git  \e[0m"
        read -p $'\e[1;9m[*] Qual option: \e[0m' origin
        git remote add origin "$origin"
        git pull origin main --allow-unrelated-histories
        git push -f origin main
        echo ""
        echo -e "\e[1;93mSe apresenta o erro error: src refspec master does not match any[\e[0m"
        echo -e "\e[1;93merror: failed to push some refs to 'PASTA REMOTA[\e[0m"
        echo ""
        echo -e "\e[1;91m--------------------------------[\e[0m"
        echo -e "\e[1;91m   git pull origin main[\e[0m"
        echo -e "\e[1;91m   git push -f origin main[\e[0m"
        echo -e "\e[1;91m--------------------------------[\e[0m"
        echo ""
    elif [ $res = "n" ];
    then
        git pull origin master
        git push -f origin master
                echo ""
        echo -e "\e[1;93mSe apresenta o erro error: src refspec master does not match any[\e[0m"
        echo -e "\e[1;93merror: failed to push some refs to 'PASTA REMOTA[\e[0m"
        echo ""
        echo -e "\e[1;91m--------------------------------[\e[0m"
        echo -e "\e[1;91m   git pull origin main[\e[0m"
        echo -e "\e[1;91m   git push -f origin main[\e[0m"
        echo -e "\e[1;91m--------------------------------[\e[0m"
        echo ""
    else
        echo -e "\e[1;91m         [\e[0m""\e[1;9m!""\e[1;91m] Erro na resposta!!  \e[0m"
    fi

    
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Qual comentario do commit?\e[0m"
    read -p $'\e[1;9m[*] Qual option: \e[0m' commit
    
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Iniciado commit\e[0m"
    git commit -m "$commit"
    
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Comando pwd!\e[0m"
    pwd
    

    

}

function 5_emailG() {
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Qual email?\e[0m"
    read -p $'\e[1;9m[*] Qual option: \e[0m' emailG
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] ADD seu email\e[0m"
    git config --global user.email "$emailG"
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Qual usuario?\e[0m"
    read -p $'\e[1;9m[*] Qual option: \e[0m' user
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] ADD seu usuario\e[0m"
    git config --global user.name "$user"
    echo ""
    echo -e "\e[1;93m         [\e[0m""\e[1;9m+""\e[1;93m] Concluido!\e[0m"
    echo ""
}

################# Chamado de Funcrtion ##################
titulo
