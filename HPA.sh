#!/bin/sh
RED="$(printf '\033[31m')"  
GREEN="$(printf '\033[32m')"  
ORANGE="$(printf '\033[33m')"  
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WHITE="$(printf '\033[37m')" 
BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  
GREENBG="$(printf '\033[42m')"  
ORANGEBG="$(printf '\033[43m')"  
BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  
CYANBG="$(printf '\033[46m')"  
WHITEBG="$(printf '\033[47m')" 
BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
YELLOW="$(printf '\e[0;33m\033[1m')"
clear
echo $CYAN "Iniciando Programa..."
sleep 2
echo ""
echo $CYAN "Ahora vamos a Capturar tu Informacion"
echo ""
sleep 2.0
clear
#Captura de Informacion
read -p "Dime tu Interfaz de Red: " interfaz
if [ "$interfaz" != "" ]
then
    int=$(ifconfig $interfaz)
else
    echo $RED "Error"
fi
 sleep 1
 clear
echo $ORANGE "Obteniendo tu IP"
echo ""
sleep 0.5
ip=$(hostname -I)
echo $YELLOW "> $ip" 
whoami=$(whoami)
sleep 1.0
clear
echo $RED""
read -p "Cual es tu Nombre: " nombre
if [ "$nombre" != "" ]
then
    echo ""
    echo  $MAGENTA "Perfecto Bienvenido $nombre"
else 
    echo $RED "Error"
fi   
clear

echo $CYAN "Tu Informacion es"
sleep 0.5
echo $YELLOW ""
echo "> Nombre: $BLUE $nombre"
sleep 1
echo $YELLOW ""
echo "> Interfaz de Red: $BLUE $interfaz"
sleep 1
echo $YELLOW ""
echo "> Tu ip es: $BLUE $ip"
sleep 1
echo $YELLOW ""
echo "> Tu usuario actual es:$BLUE $whoami"
echo ""
echo ""
while true; do
    read -p $YELLOW"Esta Informacion es Correcta? S/N?" op
    echo ""
    case $op in
      [SssiSISi]* ) echo "Iniciando Script !"; break;;
      [NnnoNONo]* ) echo "Finalizando la Ejecución !"; exit;;
          * ) echo "Seleccione Si o No.";;
    esac
done
echo ""
sleep 3.0
clear
cat <<- EOF
 ${ORANGE}
		          _______  _______ 
|\     /|(  ____ )(  ___  )
| )   ( || (    )|| (   ) |
| (___) || (____)|| (___) |
|  ___  ||  _____)|  ___  |
| (   ) || (      | (   ) |
| )   ( || )      | )   ( |
|/     \||/       |/     \|

		${GREEN}[${WHITE}-${GREEN}]${CYAN} Herramienta Creada Por$YELLOW Angel $RED(Para fines Educativos)${WHITE}
EOF
echo ""

cat <<- EOF
		${RED}[${WHITE}::${RED}]${ORANGE} Que Tipo de ataque quieres hacer $nombre ${RED}[${WHITE}::${RED}]${ORANGE}
		${RED}[${WHITE}01${RED}]${ORANGE} Recopilacion de Informacion      ${RED}[${WHITE}02${RED}]${ORANGE} Phishing       
${RED}[${WHITE}03${RED}]${ORANGE} Ataques Web                      ${RED}[${WHITE}04${RED}]${ORANGE} DDOS
${RED}[${WHITE}05${RED}]${ORANGE} Suplantacion de Identidad        ${RED}[${WHITE}06${RED}]${ORANGE} Reverse Shell
${RED}[${WHITE}07${RED}]${ORANGE} Metasploit                       ${RED}[${WHITE}08${RED}]${ORANGE} Post-Explotacion     
${RED}[${WHITE}09${RED}]${ORANGE} Ataques Wireless                 ${RED}[${WHITE}10${RED}]${ORANGE} Exit
EOF

read -p "${RED}[${WHITE}-${RED}]${GREEN} Selecciona Una Opcion : ${BLUE}"