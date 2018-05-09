#!/bin/bash
clear
echo "\033[1;32m

 ▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒          ▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒
 ▒▒           ▒ ▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒  ▒▒          ▒▒
 ▒▒  ▒▒▒▒▒▒▒▒▒▒ ▒▒                  ▒▒  ▒▒  ▒▒▒▒▒▒▒▒▒▒
 ▒▒  ▒▒         ▒▒  ▒▒▒▒▒▒  ▒▒▒▒▒▒  ▒▒  ▒▒  ▒▒
 ▒▒  ▒▒▒▒▒▒▒▒▒▒ ▒▒  ▒▒  ▒▒  ▒▒  ▒▒  ▒▒  ▒▒  ▒▒▒▒▒▒▒▒▒▒
 ▒▒          ▒▒ ▒▒  ▒▒  ▒▒  ▒▒  ▒▒  ▒▒  ▒▒          ▒▒
 ▒▒▒▒▒▒▒▒▒▒  ▒▒ ▒▒  ▒▒  ▒▒▒▒▒▒  ▒▒  ▒▒  ▒▒▒▒▒▒▒▒▒▒  ▒▒
         ▒▒  ▒▒ ▒▒  ▒▒          ▒▒  ▒▒          ▒▒  ▒▒
 ▒▒▒▒▒▒▒▒▒▒  ▒▒ ▒▒  ▒▒          ▒▒  ▒▒  ▒▒▒▒▒▒▒▒▒▒  ▒▒
 ▒▒          ▒▒ ▒▒  ▒▒          ▒▒  ▒▒  ▒▒          ▒▒
 ▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒          ▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒
\033[0m"
echo
echo "\033[1;32;41m BY : VIPLAY THEKINH \033[0m"
echo
echo "\033[1;32mDigite\033[0m""\033[1;31m [S]\033[0m""\033[1;32m PARA CONTINUAR! E \033[0m""\033[1;31m[N]\033[0m""\033[1;32m PARA SAIR\033[0m""\033[1;31m [S/N]\033[0m"
read DIGITE
echo
if [ "$DIGITE" = "S" ];then
    echo "\033[1;32mInicializando...\033[0m"
    sleep 2
    echo
  echo "\033[1;32mVOCÊ JÁ TEM O TERMUX-API INSTALADO? DIGITE\033[0m""\033[1;31m [1]\033[0m" "\033[1;32mPARA SIM E\033[0m""\033[1;31m \n[2]\033[0m""\033[1;32m PARA NÃO\033[0m""\033[1;31m [1/2]\033[0m"
    echo
    read nume
fi
 if [ "$nume" = "2" ];then
    echo "\033[1;32m AGUARDE VAMOS COMECAR A INSTALAR!\033[0m"
    sleep 2
   apt-get install termux-api
   echo 
   echo "\033[1;32m INSTALAÇÃO CONCLUIDA!.."
   sleep 2
   echo "\033[1;32mAGORA DIGITE O NUMERO QUE DESEJA ENVIAR O SMS! COM O \033[0m""\033[1;31m[DDD]\033[0m"
   echo
   read num
   echo
   echo "\033[1;32mAGORA ESCREVA SUA MENSAGEM! \033[0m"
   echo
   read men
   sleep 2
   echo
   echo "\033[1;32mESSE\033[0m""\033[1;31m $num\033[0m""\033[1;32m É O NUMERO QUE DESEJA ENVIAR O SMS? DIGITE \033[0m""\033[1;31m[Y]\033[0m""\033[1;32m PARA ENVIAR A MENSAGEM! E \033[0m""\033[1;31m[V]\033[0m""\033[1;32m PARA VOLTAR!\033[0m""\033[1;31m [Y/V]\033[0m"
   echo
   read digite2
fi
if [ "$nume" = "1" ];then
    echo "\033[1;32mAGORA DIGITE O NUMERO QUE DESEJA ENVIAR O SMS! COM O \033[0m""\033[1;31m[DDD]\033[0m"
    echo
    read num
    echo
    echo "\033[1;32mAGORA ESCREVA SUA MENSAGEM! \033[0m"
    echo
    read men
    sleep 2
    echo
    echo "\033[1;32mESSE\033[0m""\033[1;31m $num\033[0m""\033[1;32m É O NUMERO QUE DESEJA ENVIAR O SMS? DIGITE\033[0m""\033[1;31m [Y]\033[0m""\033[1;32m PARA ENVIAR A MENSAGEM! E\033[0m""\033[1;31m [V]\033[0m""\033[1;32m PARA VOLTAR\033[0m""\033[1;31m [Y/V]\033[0m"
    echo
    read digite2
fi
    if [ "$digite2" = "Y" ];then
      termux-sms-send -n $num $men
      sleep 1
      echo "\033[1;32mENVIANDO...\033[0m"
      sleep 2
      echo
      echo "\033[1;32mMENSAGEM ENVIADA!\033[0m"
      exit
    fi
  if [ "$digite2" = "V" ];then
         echo "\033[1;32mVOLTANDO...\033[0m"
        sh test.sh

   elif [ "$DIGITE" = "n" ];then
       echo "\033[1;32m SAINDO...\033[0m"
       sleep 2
       exit
  fi

     if [ "$DIGITE" = "N" ];then
        echo "\033[1;32m SAINDO...\033[0m"
        sleep 2
        exit
     fi
