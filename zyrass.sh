#!/usr/bin/bash

# CONFIGURATION
PS3="
  Quel est votre choix : "


check_os()                       # Description : Connaître l'OS et le numéro de version du Mac utilisé
{
  version_macOS=$(uname -a | cut -d " " -f 3)
  os=$(uname -a | cut -d " " -f 1)
}

loading()                     # Description : Loading animation
{
  space
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t                       (\E[36m0%\E[0m)\r'
  sleep 0.01
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m#\E[0m                      (\E[36m5%\E[0m)\r'
  sleep 0.02
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m##\E[0m                     (\E[36m10%\E[0m)\r'
  sleep 0.03
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m###\E[0m                    (\E[36m15%\E[0m)\r'
  sleep 0.04
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m####\E[0m                   (\E[36m20%\E[0m)\r'
  sleep 0.05
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m#####\E[0m                  (\E[36m25%\E[0m)\r'
  sleep 0.06
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m######\E[0m                 (\E[36m30%\E[0m)\r'
  sleep 0.07
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m#######\E[0m                (\E[36m95%\E[0m)\r'
  sleep 0.08
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m########\E[0m               (\E[36m40%\E[0m)\r'
  sleep 0.09
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m#########\E[0m              (\E[36m45%\E[0m)\r'
  sleep 0.10
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m##########\E[0m             (\E[36m50%\E[0m)\r'
  sleep 0.11
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m###########\E[0m            (\E[36m55%\E[0m)\r'
  sleep 0.12
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m############\E[0m           (\E[36m60%\E[0m)\r'
  sleep 0.13
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m#############\E[0m          (\E[36m65%\E[0m)\r'
  sleep 0.14
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m##############\E[0m         (\E[36m70%\E[0m)\r'
  sleep 0.15
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m###############\E[0m        (\E[36m75%\E[0m)\r'
  sleep 0.16
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m################\E[0m       (\E[36m80%\E[0m)\r'
  sleep 0.17
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m#################\E[0m      (\E[36m85%\E[0m)\r'
  sleep 0.18
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m##################\E[0m     (\E[36m90%\E[0m)\r'
  sleep 0.19
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m###################\E[0m    (\E[36m95%\E[0m)\r'
  sleep 0.20
  echo -ne ' ⇨ \E[37mChargement\E[0m :\t\E[32m####################\E[0m   (\E[36m100%\E[0m)\r'
  space
}

dyma_logo() {
        echo -e "\E[30;40m
\033[1mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmX00XW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWKkxk0N\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWKkxxkOXW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWKkxxxxk0NW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWKkxxxxxxOKNW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmN0kxxxxxxxkO0XW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmNOkxxxxxxxxxxkKNW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmNOkxxxxxxxxxxxk0XW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmNOkxxxxxxxxxxxkkkKN\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMWWWWMMMMMMM\E[0m\E[34;40mmmmmNOxxxxxxxxxxxxxxkkOXW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMM\E[0m\E[34;40mmmmmNOkO0KNNWMMNOxxxxxxxxxxxxkkkkkOKNW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMM\E[0m\E[34;40mmmmmWKxoodxkO0KKOxxxxxxxxxxxkkkkkkkkOXW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMM\E[0m\E[34;40mmmmmWKxooooooddxxxxxxxxxxxkkkkkkkkkkO0N\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMM\E[0m\E[34;40mmmmmWXkdooooooddddddxxxxxxkkkkkkkkkkkOXW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMM\E[0m\E[34;40mmmmmWXkdoooooddddddddddxxxxxkkkkkkkkkO0NW\E[30;40m;40mMMMMMMMM\E[0m\E[34;40m ______            _______  _______ \E[0m\E[30;40mMMMMMM
MMMMMMMMMMM\E[0m\E[34;40mmmmmXOdoododdddddddddddddxxxxxkkkkkOO0XW\E[30;40m;40mMMMMMMM\E[0m\E[34;40m(  __  \ |\     /|(       )(  ___  )\E[0m\E[30;40mMMMMMM
MMMMMMMMMMMM\E[0m\E[34;40mmmmmNOdodoodddddddddddddddxxxxxxkkkkOOKNW\E[30;40m;40mMMMMM\E[0m\E[34;40m| (  \  )( \   / )| () () || (   ) |\E[0m\E[30;40mMMMMMM
MMMMMMMMMMMMM\E[0m\E[34;40mmmmmN0ddodddddddddddddddddxxxxxxxxxxkkkKN\E[30;40m;40mMMMM\E[0m\E[34;40m| |   ) | \ (_) / | || || || (___) |\E[0m\E[30;40mMMMMMM
MMMMMMMMMMMMMM\E[0m\E[34;40mmmmmN0xdddddddddddddddddddddddddoooolokN\E[30;40m;40mMMMM\E[0m\E[34;40m| |   | |  \   /  | |(_)| ||  ___  |\E[0m\E[30;40mMMMMMM
MMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWKxdddddddddddooooollllllclccclokXW\E[30;40m;40mMMMM\E[0m\E[34;40m| |   ) |   ) (   | |   | || (   ) |\E[0m\E[30;40mMMMMMM
MMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWWN0xooooolllllcccccccccccccccloONW\E[30;40m;40mMMMMM\E[0m\E[34;40m| (__/  )   | |   | )   ( || )   ( |\E[0m\E[30;40mMMMMMM
MMMMMMMM\E[0m\E[34;40mmmmmWNXKKOkxxdlccccccccccccccccccccccccld0W\E[30;40m;40mMMMMMMM\E[0m\E[34;40m(______/    \_/   |/     \||/     \|\E[0m\E[30;40mMMMMMM
MMMMMM\E[0m\E[34;40mmmmmWNKOdoc:::::::::::ccccccccccccccccclkXW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMM\E[0m\E[34;40mmmmmWWX0kdlc::::::::cccccccccccccccoON\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMM\E[0m\E[34;40mmmmmWWX0kdocc::::cc:cccccccccco0W\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWX0kdlccccccccccccccdKW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWNX0kdllccccccclxXW\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWNXK0kdlcclkN\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\E[0m\E[34;40mmmmmWN0xdON\E[30;40m;40mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\033[0m\E[0m"
}

apple_logo() {
  echo -e "\033[1m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m/%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%*\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%#\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m,%%%%%%%%%\E[30;40m\E[30;40m@@@@\E[37m/%%%%%%%%%%(\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m,%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@\E[37m/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@\E[37m*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[37m%%%%%%%%,\E[30;40m@@@\E[37m&.%%%%%%%*\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ \033[0m\E[0m"
}

ubuntu_logo() {
  echo -e "\033[1m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%\E[30;40m@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[33;40m%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@\E[91;40m%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[33;40m%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@\E[91;40m%%%%%%%%%%%%\E[30;40m@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@\E[93;40m%%%%\E[30;40m@@@@@@\E[30;40m%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@\E[91;40m%%\E[30;40m@@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%\E[30;40m@@@@@\E[33;40m%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@\E[33;40m%\E[30;40m@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%\E[30;40m@@@@@@\E[33;40m%%%%%\E[30;40m@@@@@\E[33;40m%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@\E[33;40m%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@\E[33;40m%%%%%%%%%%%%%%%\E[30;40m@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[33;40m%%%%%%%%%%%%%%%\E[30;40m@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[33;40m%%%%%%%%%%%%%\E[30;40m@@@@\E[0m
    \E[30;40m@@@@\E[33;40m%%%%%%%%%%%\E[30;40m@@@\E[93;40m%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[33;40m%%%%%%%%%%%%%\E[30;40m@@@\E[0m
    \E[30;40m@@\E[33;40m%%%%%%%%%%%%%%\E[30;40m@@@\E[93;40m%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m\E[30;40m@@\E[33;40m%%%%%%%%%%%%%%%\E[30;40m@@@\E[93;40m%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[0m
    \E[30;40m\E[30;40m@@\E[33;40m%%%%%%%%%%%%%%\E[30;40m@@@\E[93;40m%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%\E[30;40m@@@\E[0m
    \E[30;40m@@@@\E[33;40m%%%%%%%%%%\E[30;40m@@@@\E[93;40m%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%%\E[30;40m@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%%\E[30;40m@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%%%%\E[30;40m@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%%%%\E[30;40m@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%\E[30;40m@@@@@@\E[91;40m%%%%%\E[30;40m@@@@@\E[91;40m%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%\E[30;40m@@@@@\E[91;40m%%%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@@\E[91;40m%\E[30;40m@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@\E[93;40m%%%%\E[30;40m@@@@@@\E[91;40m%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@@@@@\E[93;40m%%%\E[30;40m@@@@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%%%%%%%%%%\E[30;40m@@@\E[93;40m%%%%%%%%%%%%\E[30;40m@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[91;40m%%%%%%%%%%%%%%%%%%%\E[30;40m@@@\E[93;40m%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%%%%%\E[30;40m@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\E[93;40m%%%%%%%%%%\E[30;40m@@@@@@@@@@@\E[0m
    \E[30;40m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\033[0m\E[0m"
}

fct_show_logo()               # Description : Affiche le logo
                              # Arg 1       : Nom
{
  case $1 in

    dyma)
      dyma_logo
      echo -e "\E[37;40m          ⇨  Logo Dyma\E[0m\E[91;40m - Script non officiel                                                            \E[0m"
      echo -e "\E[37;40m          ⇨  Script mis au point par \E[33m\033[1m\E[3mZyrass\033[0m\E[37;40m utilisateur assidu sur \E[36m\E[3m\E[4mhttps://dyma.fr\E[0m\E[37;40m                      \E[0m"
      echo -e "\E[37;40m          ⇨  J'ai passé plus de \E[92;40m520 heures\E[37;40m sur cette plate-forme.                                       \E[0m"
      echo -e "\E[95;40m                                                                                                        \E[0m"
      space
      read -p "  ... Appuyer sur une touche pour accéder à la présentation du script ..."
      clear
    ;;

    accueil)
      echo -e "\033[1m\E[36m
         _______  _______  _______           _______ _________ _       
        (  ___  )(  ____ \(  ____ \|\     /|(  ____ \\\\__   __/ ( \      
        | (   ) || (    \/| (    \/| )   ( || (    \/   ) (   | (      
        | (___) || |      | |      | |   | || (__       | |   | |      
        |  ___  || |      | |      | |   | ||  __)      | |   | |      
        | (   ) || |      | |      | |   | || (         | |   | |      
        | )   ( || (____/\| (____/\| (___) || (____/\___) (___| (____/\\
        |/     \|(_______/(_______/(_______)(_______/\_______/(_______/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    chargement)
      echo -e "\033[1m\E[36m
         _        _______  _______  ______  _________ _        _______ 
        ( \      (  ___  )(  ___  )(  __  \ \__   __/( (    /|(  ____ \\
        | (      | (   ) || (   ) || (  \  )   ) (   |  \  ( || (    \/
        | |      | |   | || (___) || |   ) |   | |   |   \ | || |      
        | |      | |   | ||  ___  || |   | |   | |   | (\ \) || | ____ 
        | |      | |   | || (   ) || |   ) |   | |   | | \   || | \_  )
        | (____/\| (___) || )   ( || (__/  )___) (___| )  \  || (___) |
        (_______/(_______)|/     \|(______/ \_______/|/    )_)(_______)\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    applications)
      echo -e "\033[1m\E[36m
         _______  _______  _______  _______ 
        (  ___  )(  ____ )(  ____ )(  ____ \\
        | (   ) || (    )|| (    )|| (    \/
        | (___) || (____)|| (____)|| (_____ 
        |  ___  ||  _____)|  _____)(_____  )
        | (   ) || (      | (            ) |
        | )   ( || )      | )      /\____) |
        |/     \||/       |/       \_______)\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    curl)
      echo -e "\033[1m\E[36m
         _______           _______  _        
        (  ____ \|\     /|(  ____ )( \       
        | (    \/| )   ( || (    )|| (       
        | |      | |   | || (____)|| |       
        | |      | |   | ||     __)| |       
        | |      | |   | || (\ (   | |       
        | (____/\| (___) || ) \ \__| (____/\\ 
        (_______/(_______)|/   \__/(_______/ \033[0m\E[0m by \E[95mZyrass\E[0m
      "
      space
    ;;

    node)
      echo -e "\033[1m\E[36m
         _        _______  ______   _______ 
        ( (    /|(  ___  )(  __  \ (  ____ \\
        |  \  ( || (   ) || (  \  )| (    \/
        |   \ | || |   | || |   ) || (__    
        | (\ \) || |   | || |   | ||  __)   
        | | \   || |   | || |   ) || (      
        | )  \  || (___) || (__/  )| (____/\\
        |/    )_)(_______)(______/ (_______/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    git)
      echo -e "\033[1m\E[36m
         _______ __________________
        (  ____ \\__   __/\__   __/
        | (    \/   ) (      ) (   
        | |         | |      | |   
        | | ____    | |      | |   
        | | \_  )   | |      | |   
        | (___) |___) (___   | |   
        (_______)\_______/   )_(\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;
    
    docker)
      echo -e "\033[1m\E[36m
         ______   _______  _______  _        _______  _______ 
        (  __  \ (  ___  )(  ____ \| \    /\(  ____ \(  ____ )
        | (  \  )| (   ) || (    \/|  \  / /| (    \/| (    )|
        | |   ) || |   | || |      |  (_/ / | (__    | (____)|
        | |   | || |   | || |      |   _ (  |  __)   |     __)
        | |   ) || |   | || |      |  ( \ \ | (      | (\ (   
        | (__/  )| (___) || (____/\|  /  \ \| (____/\| ) \ \__
        (______/ (_______)(_______/|_/    \/(_______/|/   \__/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    composer)
      echo -e "\033[1m\E[36m
         _______  _______  _______  _______  _______  _______  _______  _______ 
        (  ____ \(  ___  )(       )(  ____ )(  ___  )(  ____ \(  ____ \(  ____ )
        | (    \/| (   ) || () () || (    )|| (   ) || (    \/| (    \/| (    )|
        | |      | |   | || || || || (____)|| |   | || (_____ | (__    | (____)|
        | |      | |   | || |(_)| ||  _____)| |   | |(_____  )|  __)   |     __)
        | |      | |   | || |   | || (      | |   | |      ) || (      | (\ (   
        | (____/\| (___) || )   ( || )      | (___) |/\____) || (____/\| ) \ \__
        (_______/(_______)|/     \||/       (_______)\_______)(_______/|/   \__/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    php)
      echo -e "\033[1m\E[36m
         _______           _______ 
        (  ____ )|\     /|(  ____ )
        | (    )|| )   ( || (    )|
        | (____)|| (___) || (____)|
        |  _____)|  ___  ||  _____)
        | (      | (   ) || (      
        | )      | )   ( || )      
        |/       |/     \||/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    mysql)
      echo -e "\033[1m\E[36m
         _______           _______  _______  _       
        (       )|\     /|(  ____ \(  ___  )( \      
        | () () |( \   / )| (    \/| (   ) || (      
        | || || | \ (_) / | (_____ | |   | || |      
        | |(_)| |  \   /  (_____  )| |   | || |      
        | |   | |   ) (         ) || | /\| || |      
        | )   ( |   | |   /\____) || (_\ \ || (____/\\
        |/     \|   \_/   \_______)(____\/_)(_______/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    symfony)
      echo -e "\033[1m\E[36m
         _______           _______  _______  _______  _                
        (  ____ \|\     /|(       )(  ____ \(  ___  )( (    /||\     /|
        | (    \/( \   / )| () () || (    \/| (   ) ||  \  ( |( \   / )
        | (_____  \ (_) / | || || || (__    | |   | ||   \ | | \ (_) / 
        (_____  )  \   /  | |(_)| ||  __)   | |   | || (\ \) |  \   /  
              ) |   ) (   | |   | || (      | |   | || | \   |   ) (   
        /\____) |   | |   | )   ( || )      | (___) || )  \  |   | |   
        \_______)   \_/   |/     \||/       (_______)|/    )_)   \_/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    vue)
      echo -e "\033[1m\E[36m
                           _______ 
        |\     /||\     /|(  ____ \\
        | )   ( || )   ( || (    \/
        | |   | || |   | || (__    
        ( (   ) )| |   | ||  __)   
         \ \_/ / | |   | || (      
          \   /  | (___) || (____/\\
           \_/   (_______)(_______/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    react)
      echo -e "\033[1m\E[36m
         _______  _______  _______  _______ _________
        (  ____ )(  ____ \(  ___  )(  ____ \\\__   __/
        | (    )|| (    \/| (   ) || (    \/   ) (   
        | (____)|| (__    | (___) || |         | |   
        |     __)|  __)   |  ___  || |         | |   
        | (\ (   | (      | (   ) || |         | |   
        | ) \ \__| (____/\| )   ( || (____/\   | |   
        |/   \__/(_______/|/     \|(_______/   )_(\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    angular)
      echo -e "\033[1m\E[36m
         _______  _        _______           _        _______  _______ 
        (  ___  )( (    /|(  ____ \|\     /|( \      (  ___  )(  ____ )
        | (   ) ||  \  ( || (    \/| )   ( || (      | (   ) || (    )|
        | (___) ||   \ | || |      | |   | || |      | (___) || (____)|
        |  ___  || (\ \) || | ____ | |   | || |      |  ___  ||     __)
        | (   ) || | \   || | \_  )| |   | || |      | (   ) || (\ (   
        | )   ( || )  \  || (___) || (___) || (____/\| )   ( || ) \ \__
        |/     \||/    )_)(_______)(_______)(_______/|/     \||/   \__/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    typescript)
      echo -e "\033[1m\E[36m
        _________ _______  
        \__   __/(  ____ \\
           ) (   | (    \/
           | |   | (_____ 
           | |   (_____  )
           | |         ) |
           | |   /\____) |
           )_(   \_______)\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    python)
      echo -e "\033[1m\E[36m
         _______          _________          _______  _       
        (  ____ )|\     /|\__   __/|\     /|(  ___  )( (    /|
        | (    )|( \   / )   ) (   | )   ( || (   ) ||  \  ( |
        | (____)| \ (_) /    | |   | (___) || |   | ||   \ | |
        |  _____)  \   /     | |   |  ___  || |   | || (\ \) |
        | (         ) (      | |   | (   ) || |   | || | \   |
        | )         | |      | |   | )   ( || (___) || )  \  |
        |/          \_/      )_(   |/     \|(_______)|/    )_)\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    dart)
      echo -e "\033[1m\E[36m
         ______   _______  _______ _________
        (  __  \ (  ___  )(  ____ )\__   __/
        | (  \  )| (   ) || (    )|   ) (   
        | |   ) || (___) || (____)|   | |   
        | |   | ||  ___  ||     __)   | |   
        | |   ) || (   ) || (\ (      | |   
        | (__/  )| )   ( || ) \ \__   | |   
        (______/ |/     \||/   \__/   )_(\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    flutter)
      echo -e "\033[1m\E[36m
         _______  _                __________________ _______  _______ 
        (  ____ \( \      |\     /|\__   __/\__   __/(  ____ \(  ____ )
        | (    \/| (      | )   ( |   ) (      ) (   | (    \/| (    )|
        | (__    | |      | |   | |   | |      | |   | (__    | (____)|
        |  __)   | |      | |   | |   | |      | |   |  __)   |     __)
        | (      | |      | |   | |   | |      | |   | (      | (\ (   
        | )      | (____/\| (___) |   | |      | |   | (____/\| ) \ \__
        |/       (_______/(_______)   )_(      )_(   (_______/|/   \__/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    postman)
      echo -e "\033[1m\E[36m       
         _______  _______  _______ _________ _______  _______  _       
        (  ____ )(  ___  )(  ____ \\\\__   __/(       )(  ___  )( (    /|
        | (    )|| (   ) || (    \/   ) (   | () () || (   ) ||  \  ( |
        | (____)|| |   | || (_____    | |   | || || || (___) ||   \ | |
        |  _____)| |   | |(_____  )   | |   | |(_)| ||  ___  || (\ \) |
        | (      | |   | |      ) |   | |   | |   | || (   ) || | \   |
        | )      | (___) |/\____) |   | |   | )   ( || )   ( || )  \  |
        |/       (_______)\_______)   )_(   |/     \||/     \||/    )_)\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    code)
      echo -e "\033[1m\E[36m       
         _______  _______  ______   _______ 
        (  ____ \(  ___  )(  __  \ (  ____ \\
        | (    \/| (   ) || (  \  )| (    \/
        | |      | |   | || |   ) || (__    
        | |      | |   | || |   | ||  __)   
        | |      | |   | || |   ) || (      
        | (____/\| (___) || (__/  )| (____/\\
        (_______/(_______)(______/ (_______/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    discord)
      echo -e "\033[1m\E[36m       
         ______  _________ _______  _______  _______  _______  ______  
        (  __  \ \__   __/(  ____ \(  ____ \(  ___  )(  ____ )(  __  \ 
        | (  \  )   ) (   | (    \/| (    \/| (   ) || (    )|| (  \  )
        | |   ) |   | |   | (_____ | |      | |   | || (____)|| |   ) |
        | |   | |   | |   (_____  )| |      | |   | ||     __)| |   | |
        | |   ) |   | |         ) || |      | |   | || (\ (   | |   ) |
        | (__/  )___) (___/\____) || (____/\| (___) || ) \ \__| (__/  )
        (______/ \_______/\_______)(_______/(_______)|/   \__/(______/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    figma)
      echo -e "\033[1m\E[36m       
         _______ _________ _______  _______  _______ 
        (  ____ \\\\__   __/(  ____ \(       )(  ___  )
        | (    \/   ) (   | (    \/| () () || (   ) |
        | (__       | |   | |      | || || || (___) |
        |  __)      | |   | | ____ | |(_)| ||  ___  |
        | (         | |   | | \_  )| |   | || (   ) |
        | )      ___) (___| (___) || )   ( || )   ( |
        |/       \_______/(_______)|/     \||/     \|\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    krita)
      echo -e "\033[1m\E[36m       
         _        _______ __________________ _______ 
        | \    /\(  ____ )\__   __/\__   __/(  ___  )
        |  \  / /| (    )|   ) (      ) (   | (   ) |
        |  (_/ / | (____)|   | |      | |   | (___) |
        |   _ (  |     __)   | |      | |   |  ___  |
        |  ( \ \ | (\ (      | |      | |   | (   ) |
        |  /  \ \| ) \ \_____) (___   | |   | )   ( |
        |_/    \/|/   \__/\_______/   )_(   |/     \|\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    spotify)
      echo -e "\033[1m\E[36m       
         _______  _______  _______ __________________ _______          
        (  ____ \(  ____ )(  ___  )\__   __/\__   __/(  ____ \|\     /|
        | (    \/| (    )|| (   ) |   ) (      ) (   | (    \/( \   / )
        | (_____ | (____)|| |   | |   | |      | |   | (__     \ (_) / 
        (_____  )|  _____)| |   | |   | |      | |   |  __)     \   /  
              ) || (      | |   | |   | |      | |   | (         ) (   
        /\____) || )      | (___) |   | |   ___) (___| )         | |   
        \_______)|/       (_______)   )_(   \_______/|/          \_/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    thunderbird)
      echo -e "\033[1m\E[36m       
         _______  _______ _________ _       
        (       )(  ___  )\__   __/( \      
        | () () || (   ) |   ) (   | (      
        | || || || (___) |   | |   | |      
        | |(_)| ||  ___  |   | |   | |      
        | |   | || (   ) |   | |   | |      
        | )   ( || )   ( |___) (___| (____/\\
        |/     \||/     \|\_______/(_______/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    kylin-video)
      echo -e "\033[1m\E[36m       
         _                 _       _________ _       
        | \    /\|\     /|( \      \__   __/( (    /|
        |  \  / /( \   / )| (         ) (   |  \  ( |
        |  (_/ /  \ (_) / | |         | |   |   \ | |
        |   _ (    \   /  | |         | |   | (\ \) |
        |  ( \ \    ) (   | |         | |   | | \   |
        |  /  \ \   | |   | (____/\___) (___| )  \  |
        |_/    \/   \_/   (_______/\_______/|/    )_)\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    obs-studio)
      echo -e "\033[1m\E[36m       
         _______  ______   _______ 
        (  ___  )(  ___ \ (  ____ \\
        | (   ) || (   ) )| (    \/
        | |   | || (__/ / | (_____ 
        | |   | ||  __ (  (_____  )
        | |   | || (  \ \       ) |
        | (___) || )___) )/\____) |
        (_______)|/ \___/ \_______)\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    blender)
      echo -e "\033[1m\E[36m       
         ______   _        _______  _        ______   _______  _______ 
        (  ___ \ ( \      (  ____ \( (    /|(  __  \ (  ____ \(  ____ )
        | (   ) )| (      | (    \/|  \  ( || (  \  )| (    \/| (    )|
        | (__/ / | |      | (__    |   \ | || |   ) || (__    | (____)|
        |  __ (  | |      |  __)   | (\ \) || |   | ||  __)   |     __)
        | (  \ \ | |      | (      | | \   || |   ) || (      | (\ (   
        | )___) )| (____/\| (____/\| )  \  || (__/  )| (____/\| ) \ \__
        |/ \___/ (_______/(_______/|/    )_)(______/ (_______/|/   \__/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    chromium)
      echo -e "\033[1m\E[36m       
         _______           _______  _______  _______ _________          _______ 
        (  ____ \|\     /|(  ____ )(  ___  )(       )\__   __/|\     /|(       )
        | (    \/| )   ( || (    )|| (   ) || () () |   ) (   | )   ( || () () |
        | |      | (___) || (____)|| |   | || || || |   | |   | |   | || || || |
        | |      |  ___  ||     __)| |   | || |(_)| |   | |   | |   | || |(_)| |
        | |      | (   ) || (\ (   | |   | || |   | |   | |   | |   | || |   | |
        | (____/\| )   ( || ) \ \__| (___) || )   ( |___) (___| (___) || )   ( |
        (_______/|/     \||/   \__/(_______)|/     \|\_______/(_______)|/     \|\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    firefox)
      echo -e "\033[1m\E[36m       
         _______ _________ _______  _______  _______  _______          
        (  ____ \\\\__   __/(  ____ )(  ____ \(  ____ \(  ___  )|\     /|
        | (    \/   ) (   | (    )|| (    \/| (    \/| (   ) |( \   / )
        | (__       | |   | (____)|| (__    | (__    | |   | | \ (_) / 
        |  __)      | |   |     __)|  __)   |  __)   | |   | |  ) _ (  
        | (         | |   | (\ (   | (      | (      | |   | | / ( ) \ 
        | )      ___) (___| ) \ \__| (____/\| )      | (___) |( /   \ )
        |/       \_______/|/   \__/(_______/|/       (_______)|/     \|\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    brave)
      echo -e "\033[1m\E[36m       
         ______   _______  _______           _______ 
        (  ___ \ (  ____ )(  ___  )|\     /|(  ____ \\
        | (   ) )| (    )|| (   ) || )   ( || (    \/
        | (__/ / | (____)|| (___) || |   | || (__    
        |  __ (  |     __)|  ___  |( (   ) )|  __)   
        | (  \ \ | (\ (   | (   ) | \ \_/ / | (      
        | )___) )| ) \ \__| )   ( |  \   /  | (____/\\
        |/ \___/ |/   \__/|/     \|   \_/   (_______/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    opera)
      echo -e "\033[1m\E[36m       
         _______  _______  _______  _______  _______ 
        (  ___  )(  ____ )(  ____ \(  ____ )(  ___  )
        | (   ) || (    )|| (    \/| (    )|| (   ) |
        | |   | || (____)|| (__    | (____)|| (___) |
        | |   | ||  _____)|  __)   |     __)|  ___  |
        | |   | || (      | (      | (\ (   | (   ) |
        | (___) || )      | (____/\| ) \ \__| )   ( |
        (_______)|/       (_______/|/   \__/|/     \|\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    vlc)
      echo -e "\033[1m\E[36m       
                  _        _______ 
        |\     /|( \      (  ____ \\
        | )   ( || (      | (    \/
        | |   | || |      | |      
        ( (   ) )| |      | |      
         \ \_/ / | |      | |      
          \   /  | (____/\| (____/\\
           \_/   (_______/(_______/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    okular)
      echo -e "\033[1m\E[36m       
         _______  _                 _        _______  _______ 
        (  ___  )| \    /\|\     /|( \      (  ___  )(  ____ )
        | (   ) ||  \  / /| )   ( || (      | (   ) || (    )|
        | |   | ||  (_/ / | |   | || |      | (___) || (____)|
        | |   | ||   _ (  | |   | || |      |  ___  ||     __)
        | |   | ||  ( \ \ | |   | || |      | (   ) || (\ (   
        | (___) ||  /  \ \| (___) || (____/\| )   ( || ) \ \__
        (_______)|_/    \/(_______)(_______/|/     \||/   \__/\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    gimp)
      echo -e "\033[1m\E[36m       
         _______ _________ _______  _______ 
        (  ____ \\\\__   __/(       )(  ____ )
        | (    \/   ) (   | () () || (    )|
        | |         | |   | || || || (____)|
        | | ____    | |   | |(_)| ||  _____)
        | | \_  )   | |   | |   | || (      
        | (___) |___) (___| )   ( || )      
        (_______)\_______/|/     \||/  \033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    mysql-workbench-community)
      echo -e "\033[1m\E[36m
                  _______  _______  _        ______   _______  _        _______          
        |\     /|(  ___  )(  ____ )| \    /\(  ___ \ (  ____ \( (    /|(  ____ \|\     /|
        | )   ( || (   ) || (    )||  \  / /| (   ) )| (    \/|  \  ( || (    \/| )   ( |
        | | _ | || |   | || (____)||  (_/ / | (__/ / | (__    |   \ | || |      | (___) |
        | |( )| || |   | ||     __)|   _ (  |  __ (  |  __)   | (\ \) || |      |  ___  |
        | || || || |   | || (\ (   |  ( \ \ | (  \ \ | (      | | \   || |      | (   ) |
        | () () || (___) || ) \ \__|  /  \ \| )___) )| (____/\| )  \  || (____/\| )   ( |
        (_______)(_______)|/   \__/|_/    \/|/ \___/ (_______/|/    )_)(_______/|/     \|\033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

    android)
      echo -e "\033[1m\E[36m
         _______  _        ______   _______  _______ _________ ______  
        (  ___  )( (    /|(  __  \ (  ____ )(  ___  )\__   __/(  __  \ 
        | (   ) ||  \  ( || (  \  )| (    )|| (   ) |   ) (   | (  \  )
        | (___) ||   \ | || |   ) || (____)|| |   | |   | |   | |   ) |
        |  ___  || (\ \) || |   | ||     __)| |   | |   | |   | |   | |
        | (   ) || | \   || |   ) || (\ (   | |   | |   | |   | |   ) |
        | )   ( || )  \  || (__/  )| ) \ \__| (___) |___) (___| (__/  )
        |/     \||/    )_)(______/ |/   \__/(_______)\_______/(______/ \033[0m\E[0m by \E[95mZyrass\E[0m"
      space
    ;;

  esac
}

fct_which_name()              # Description : Vérifier que le programme est installé ou non
                              # Arg 1       : Nom
{
  PROGRAMME_NAME=$1

  if [ $PROGRAMME_NAME = "angular" ]; then
    RESULT=$(which ng)
  elif [ $PROGRAMME_NAME = "typescript" ]; then
    RESULT=$(which tsc)
  else
    RESULT=$(which $PROGRAMME_NAME)
  fi

  if [ $? -eq 0 ]; then
    echo -e "\E[32mInstallé\E[0m"
  else
    echo -e "\E[37mPas installé.\E[0m"
  fi
}

fct_check_version()           # Description : Vérifier la version d'un programme
                              # Arg 1       : Nom
{
  # Versiopn
  # version_linux=$(lsb_release -a | grep -Ei "Description" | cut -d " " -f 2 | head -n 2)

  PROGRAMME_NAME=$1
  RESULT=$(which $PROGRAMME_NAME)
  if [ $PROGRAMME_NAME = "angular" ]; then
    RESULT=$(which ng)
  elif [ $PROGRAMME_NAME = "typescript" ]; then
    RESULT=$(which tsc)
  else
    RESULT=$(which $PROGRAMME_NAME)
  fi

  if [ $? -eq 0 ]; then
    if [ $PROGRAMME_NAME = "curl" ]; then
      version_curl=$(curl --version | head -n 1 | cut -d " " -f 2 | cut -d " " -f 1)
      echo -e "\E[33m$version_curl\E[0m"
    elif [ $PROGRAMME_NAME = "git" ]; then
      version_git=$(git --version | awk '{print $3}')
      echo -e "\E[33m$version_git\E[0m"
    elif [ $PROGRAMME_NAME = "node" ]; then
      version_node=$(node -v | cut -d "v" -f 2)
      version_npm=$(npm -v)
      echo -e "\E[36mNode:\E[0m \E[33m$version_node\E[0m \E[36mNPM:\E[0m \E[33m$version_npm\E[0m"
    elif [ $PROGRAMME_NAME = "docker" ]; then
      version_docker=$(docker -v | cut -d "," -f 1 | cut -d " " -f 3)
      echo -e "\E[33m$version_docker\E[0m"
    elif [ $PROGRAMME_NAME = "php" ]; then
      version_php=$(php -v | head -n 1 | cut -d " " -f 2)
      echo -e "\E[33m$version_php\E[0m"
    elif [ $PROGRAMME_NAME = "mysql" ]; then
      version_mysql=$(mysql -V | cut -d "u" -f 1 | cut -d " " -f 4)
      echo -e "\E[33m$version_mysql\E[0m"
    # elif [ $PROGRAMME_NAME = "nginx" ]; then
    #   version_nginx=$(nginx -v | head -n 1 | cut -d " " -f 3)
    #   echo -e "\E[33m$PROGRAMME_NAME $version_nginx\E[0m"
    # elif [ $PROGRAMME_NAME = "phpmyadmin" ]; then
    #   version_phpmyadmin=$(phpmyadmin -v | head -n 1 | cut -d " " -f 3)
    #   echo -e "\E[33m$PROGRAMME_NAME $version_phpmyadmin\E[0m"
    elif [ $PROGRAMME_NAME = "composer" ]; then
      version_composer=$(composer -V | head -n 1 | cut -d " " -f 3)
      echo -e "\E[33m$version_composer\E[0m"
    elif [ $PROGRAMME_NAME = "symfony" ]; then
      version_symfony=$(symfony -V | grep -Ei version | cut -d " " -f 4 | cut -d "v" -f 2)
      echo -e "\E[33m$version_symfony\E[0m"
    # elif [ $PROGRAMME_NAME = "vue" ]; then
    #   version_vue="à éditer"
    #   echo -e "\E[33m$PROGRAMME_NAME $version_vue\E[0m"
    # elif [ $PROGRAMME_NAME = "react" ]; then
    #   version_react=$(create-react-app -v | head -n 1 | cut -d " " -f 2)
      # echo -e "\E[33m$PROGRAMME_NAME $version_react\E[0m"
    elif [ $PROGRAMME_NAME = "angular" ]; then
      version_angular=$(ng --version | grep -Ei cli: | cut -d " " -f 3)
      echo -e "\E[33m$version_angular\E[0m"
    elif [ $PROGRAMME_NAME = "typescript" ]; then
      version_typescript=$(tsc -v | cut -d " " -f 2)
      echo -e "\E[33m$version_typescript\E[0m"
    # elif [ $PROGRAMME_NAME = "python" ]; then
    #   version_python38=$(python3 -V | cut -d " " -f 2)
    #   version_python310=$(python3.10 -V | cut -d " " -f 2)
    #   echo -e "\E[36mPython 3.8 :\E[0m \E[33m$version_python38\E[0m \E[36mPython 3.10:\E[0m \E[33m$version_python310\E[0m"
    elif [ $PROGRAMME_NAME = "flutter" ]; then
      version_dart=$(dart --version | cut -d " " -f 4)
      version_flutter=$(flutter --version | head -n 1 | cut -d " " -f 2)
      echo -e "\E[36mFlutter:\E[0m \E[33m$version_flutter\E[0m \E[36mDart:\E[0m \E[33m$version_dart\E[0m"

    # APP
    elif [ $PROGRAMME_NAME = "code" ]; then
      version_code=$(code --version | head -n 1 | cut -d " " -f 3)
      echo -e "\E[33m$version_code\E[0m"

    fi
  else
    if [ $PROGRAMME_NAME = "android" ]; then
      # version_android=$(echo android-studio-2021.1.1.22-linux.tar.gz | cut -d "-" -f 3)
      echo -e "\E[32mInstallé\E[0m"
    else
      echo -e "\E[37mPas installé.\E[0m"
    fi
  fi


}

space()                      # Description : Création d'un simple space pour plus de lisibilité
{
  echo -e "\n"
}

fct_message_presentation()    # Description : Affiche la présentation du script.
{

  check_os
  if [ $? -eq 0 ]; then
    
    if [ $version_macOS = "Darwin" ]; then
      apple_logo
    else
      ubuntu_logo
    fi
  fi

  space
  echo -e "     \E[91mSi, ci-dessous vous avez une erreur vous pourrez installer lsb-core\E[0m"
  echo -e "     \E[91mSous linux : \E[36mapt-get install lsb-core -y\E[0m\E[0m"
  space

  if [ $(uname -a | cut -d " " -f 1) = "Darwin" ]; then
    echo -e "     \E[96m ⇨ Vous exécutez $(uname -a | cut -d " " -f 1) sur un Mac avec comme version: $(uname -a | cut -d " " -f 3).\E[0m"
  elif [ $(uname -a | cut -d " " -f 1) = "Linux" ]; then
    echo -e "     \E[96m ⇨ Vous exécutez $(uname -a | head -n 2 | cut -d " " -f 15) avec une distribution $(uname -a | cut -d " " -f 4 | cut -d "-" -f 2) $(lsb_release -a | grep -Ei "Description" | cut -d " " -f 2 | head -n 2).\E[0m"
  fi
  echo -e "\t\033[1m\033[3mCe script sera actualisé chaque fois que nécessaire.\033[0m\033[0m"
  
  space
  read -p "    Pressez une touche pour poursuivre..."
  clear

  space
  echo -e "     \E[37mBonjour,\E[0m \033[1m\E[32m$USER\E[0m\E[0m"
  echo -e "     \E[37mCe script est avant tout un projet personnel,\E[0m"
  echo -e "     \E[37mje compte le proposer à \E[36mErwan\E[0m \E[37met\E[0m \E[36mQuentin\E[0m\E[37m, deux développeurs chevronné afin de voir\E[0m"
  echo -e "     \E[37ms'ils seraient intéressés pour le diffuser à leur communauté (\E[33mDyma\E[0m).\E[0m"
  space
  echo -e "     \E[37mJe m'appelle\E[0m \E[32mAlain Guillon\E[0m\E[37\033[2m, développeur dit \"\033[1m\E[96mJunior\033[0m\E[0m\" \E[37mavec tout de même quelques bases très solide.\033[0m\E[0m"
  echo -e "     \E[37mVia ce script, je ne cherche aucunement à monnayer celui-ci.\E[0m"
  echo -e "     \E[37mSi je peux apporter un complément ou bien faciliter l'installation de tel ou tel programme sur Linux ou Mac.\E[0m"
  space 
  echo -e "     \E[37mJe vais par la suite voir pour diffuser celui-ci sur la plateforme \E[95mLinkedin\E[0m\E[37m avec leurs accords \E[0m"
  echo -e "     \E[37mafin de permettre à un nombre conséquent d'étudiants de ne plus avoir à craindre \E[0m"
  echo -e "     \E[37md'installer ou de supprimer un quelconque programme sur ces OS.\E[0m"
  space
  echo -e "     \E[33mJe vous propose via ce script ceci :\E[0m"
  echo -e "         \E[33m1. vous y trouverez des programmes que j'utilise.\E[0m"
  echo -e "             \E[37m- (Uniquement des programmes disponibles avec \E[36msnap\E[0m \E[37mou\E[0m \E[36mapt\E[0m\E[37m)\E[0m" 
  echo -e "         \E[33m2. Des tâches automatisées pour installer, désinstaller des programmes ou technologie :P\E[0m"
  space
  echo -e " \E[37m ---------------------------------------------------------------------------------------------------------------------- \E["
  space

  echo -e "\t\E[34m👉 Si vous le souhaitez, je peux vous parrainer sur la plateforme de Dyma.fr ❗ \E[91mAucune obligation\E[0m\E[0m"
  echo -e "\t👉 \E[34mVous serez libre de tester leur plateforme pendant 7 jours gratuitement.\E[0m"
  echo -e "\t👉 \E[34mSi ça vous intéresse, \E[33mil vous suffira de maintenir CTRL\E[0m \E[34met de\E[0m \E[33mcliquer sur le lien ci-dessous\E[0m \E[37m:\E[0m"
  echo -e "\t👉 \033[3m\E[92mhttps://dyma.fr/r/5d52bd274e7aec730eb90fde\033[0m\E[0m"
  space
  read -p "   Appuyer sur une touche pour continuer ..."
  clear
}

fct_show_version()            # Description : Affiche la version d'un programme quelconque
                              # Arg 1       : Nom de la technologie ou programme
                              # Arg 2       : Version de la technologie ou programme
{
  PROGRAMME_NAME=$1

  if [ $PROGRAMME_NAME = "android" ]; then
    echo -e " \E[36m+ ---------------------------------------------------------------------------------------- +\E[0m"
    echo -e " \E[36m|\E[0m  \E[33mStatut actuel du programme $PROGRAMME_NAME :\E[0m \E[32m$(fct_check_version $PROGRAMME_NAME)\E[0m"
    echo -e " \E[36m+ ---------------------------------------------------------------------------------------- +\E[0m"
  else
    echo -e " \E[36m+ ---------------------------------------------------------------------------------------- +\E[0m"
    echo -e " \E[36m|\E[0m  \E[33mStatut actuel du programme $PROGRAMME_NAME :\E[0m \E[32m$(fct_which_name $PROGRAMME_NAME)\E[0m"
    echo -e " \E[36m+ ---------------------------------------------------------------------------------------- +\E[0m"
  fi
  space
}

fct_install()                 # Description : Permet d'afficher le message si l'installation à réussi ou bien si elle existe.
                              # Arg 1       : "success" ou "error"
{
  case $i in
    "success")
      echo -e "\E[92m+ ------------------------------------------------------------------------------------------------ +\E[0m"
      echo -e "\E[92m\t\t✅ $PROGRAMME_NAME a bien été installé avec succès!\E[0m"
      echo -e "\E[92m+ ------------------------------------------------------------------------------------------------ +\E[0m"
    ;;
    "error")
      echo -e "\E[91m+ ------------------------------------------------------------------------------------------------ +\E[0m"
      echo -e "\E[91m\t\t❌ Désolé, $PROGRAMME_NAME a déjà été installé sur cette ordinateur!\E[0m"
      echo -e "\E[91m+ ------------------------------------------------------------------------------------------------ +\E[0m"
    ;;
  esac
}

fct_back_to ()                # Description : Selon le programme ou technologie, on retournera au menu en question                              
                              # Arg 1       : Nom de la technologie ou programme
{
  case $1 in
    "home")
      fct_install "success"
      space
      read -p "Appuyer sur une touche pour vous rendre au menu principal..."
      clear
      fct_show_home_menu
    ;;
    "app")
      fct_install "success"
      space
      read -p "Appuyer sur une touche pour vous rendre au menu des applications..."
      clear
      fct_show_app_menu
    ;;
  esac
}

fct_info_programme()          # Description : Afficher les informations du programme
                              # Arg 1       : Nom de la technologie ou programme
{
  PROGRAMME_NAME=$1

  # Choix des actions à effectuer
  select option in "Installation de $PROGRAMME_NAME" "Désinstallation de $PROGRAMME_NAME" "allez à la page des applications" "allez à la page d'accueil"
  do
    case $option in
      
      "Installation de $PROGRAMME_NAME") 
        
        # Installation de la technologie
        space
        echo -e " \E[36m+ -------------------------------------------------------------------------------------------------------- +"
        echo -e " \E[36m|   \E[33mInstallation de $PROGRAMME_NAME\E[0m"
        echo -e " \E[36m+ -------------------------------------------------------------------------------------------------------- +\E[0m"
        if [ $PROGRAMME_NAME = "curl" ]; then
          echo -e " \E[96m| /!\ Il est normalement installé par défaut, mais au cas où /!\ \E[0m"
          echo -e " \E[96m|\E[0m \E[37m Pour installer $PROGRAMME_NAME + npm, nous aurions dû saisir :\E[0m"
        elif [ $PROGRAMME_NAME = "node" ]; then
          echo -e " \E[96m|\E[0m \E[37m /!\ Il faut toujours installer une version PAIRE /!\ \E[0m"
          echo -e " \E[96m|\E[0m \E[37m Pour installer $PROGRAMME_NAME + npm, nous aurions dû saisir :\E[0m"
        elif [ $PROGRAMME_NAME = "symfony" ]; then
          echo -e " \E[96m|\E[0m \E[37m Deux prérequis indispensable qui doit être installé sur votre ordinateur: \E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95mphp8\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95mcomposer\E[0m"
          echo -e " \E[96m|\E[0m \E[37m Enfin, pour installer $PROGRAMME_NAME nous aurions dû saisir :\E[0m"
        elif [ $PROGRAMME_NAME = "flutter" ]; then
          echo -e " \E[96m|\E[0m \E[37m Pour installer $PROGRAMME_NAME + dart, nous aurions dû saisir :\E[0m"
        else
          echo -e " \E[96m|\E[0m \E[37m Pour installer $PROGRAMME_NAME, nous aurions dû saisir :\E[0m"
        fi
        
        # ACCUEIL
        if [ $PROGRAMME_NAME = "curl" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt-get update\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt-get install $PROGRAMME_NAME\E[0m"
        elif [ $PROGRAMME_NAME = "node" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95mcurl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt-get install -y nodejs\E[0m"
        elif [ $PROGRAMME_NAME = "git" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt-get update\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt-get install $PROGRAMME_NAME\E[0m"
        elif [ $PROGRAMME_NAME = "docker" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95mPlusieurs étapes sont nécessaire...\E[0m"
        elif [ $PROGRAMME_NAME = "php" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo add-apt-repository ppa:ondrej/php -y\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt install php8.1 -y\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt install php8.1-mbstring -y\E[0m"
          
        elif [ $PROGRAMME_NAME = "mysql" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt-get install mysql-server\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[91m\E[1m /!\ Veuillez vous rendre sur Dyma pour configurer mysql. /!\ \E[0m"
        elif [ $PROGRAMME_NAME = "composer" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95mPlusieurs étapes sont nécessaire...\E[0m"
        elif [ $PROGRAMME_NAME = "symfony" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95mecho 'deb [trusted=yes] https://repo.symfony.com/apt/ /' | sudo tee /etc/apt/sources.list.d/symfony-cli.list\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt update\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt install symfony-cli\E[0m"
          echo -e " \E[91m| \E[0m ⇨ \E[91m\E[1m /!\ Possibilité d'avoir une erreur alors pour évité ceci on installera la dépendance ci-dessous. /!\ \E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt-get install php8.*-xml\E[0m"
          echo -e " \E[97m| \E[0m ⇨ \E[91m\E[1m /!\ Faîtes la commande ci-dessous pour voir si tout est OK. (Encadré vert) /!\ \E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msymfony check:requirements\E[0m"

        # elif [ $PROGRAMME_NAME = "phpmyadmin" ]; then
        #   echo -e " \E[36m|\E[0m \E[37m Pour installer $PROGRAMME_NAME, nous aurions dû saisir :\E[0m"
        # elif [ $PROGRAMME_NAME = "nginx" ]; then
        #     echo -e " \E[36m|\E[0m \E[37m Pour installer $PROGRAMME_NAME, nous aurions dû saisir :\E[0m"
        #   echo -e " \E[36m|\E[0m \E[37m Pour installer $PROGRAMME_NAME, nous aurions dû saisir :\E[0m"
        # elif [ $PROGRAMME_NAME = "laravel" ]; then
        #   echo -e " \E[36m|\E[0m \E[37m Pour installer $PROGRAMME_NAME, nous aurions dû saisir :\E[0m"
        # elif [ $PROGRAMME_NAME = "vue" ]; then
        #   echo -e " \E[36m|\E[0m \E[37m Pour installer $PROGRAMME_NAME, nous aurions dû saisir :\E[0m"
        # elif [ $PROGRAMME_NAME = "react" ]; then
        #   echo -e " \E[36m|\E[0m \E[37m Pour installer $PROGRAMME_NAME, nous aurions dû saisir :\E[0m"
        elif [ $PROGRAMME_NAME = "angular" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo npm install -g @angular/cli\E[0m"
        elif [ $PROGRAMME_NAME = "typescript" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo npm install -g typescript -y\E[0m"


        # elif [ $PROGRAMME_NAME = "python" ]; then
        #   echo -e " \E[36m|\E[0m \E[37m Pour installer $PROGRAMME_NAME, nous aurions dû saisir :\E[0m"
        #   echo -e " \E[36m| \E[0m ⇨ \E[95msudo add-apt-repository ppa:deadsnakes/ppa -y\E[0m"
        #   echo -e " \E[36m| \E[0m ⇨ \E[95msudo apt-get install python3.10 -y\E[0m"
        elif [ $PROGRAMME_NAME = "flutter" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo snap install flutter --classic\E[0m"

        # APPLICATIONS
        elif [ $PROGRAMME_NAME = "code" -o $PROGRAMME_NAME = "blender"  ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo snap install  $PROGRAMME_NAME --classic\E[0m"

        elif [  $PROGRAMME_NAME = "mysql-workbench-community" -o $PROGRAMME_NAME = "chromium" -o $PROGRAMME_NAME = "firefox" -o $PROGRAMME_NAME = "brave" -o $PROGRAMME_NAME = "opera" -o $PROGRAMME_NAME = "figma-linux"  -o $PROGRAMME_NAME = "krita" -o $PROGRAMME_NAME = "postman" -o $PROGRAMME_NAME = "discord" -o $PROGRAMME_NAME = "spotify" -o $PROGRAMME_NAME = "thunderbird" -o $PROGRAMME_NAME = "obs-studio" -o $PROGRAMME_NAME = "vlc" -o $PROGRAMME_NAME = "okular" -o $PROGRAMME_NAME = "gimp" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo snap install $PROGRAMME_NAME\E[0m"

        elif [ $PROGRAMME_NAME = "kylin-video" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt kylin-video -y\E[0m"

        fi

        echo -e " \E[36m+ --------------------------------------------------------------------------------------------------- +\E[0m"
        space

        if [ $PROGRAMME_NAME = "docker"  ]; then
          echo -e " \E[34mMe faîtes-vous confiance pour que j'installe pour vous \"\E[36m$PROGRAMME_NAME\E[0m\E[34m\" sans vous montrer les commandes !?\E[0m\E[0m"
        elif [ $PROGRAMME_NAME = "composer" ]; then
          echo -e " \E[34mMe faîtes-vous confiance pour que j'installe pour vous \"\E[36m$PROGRAMME_NAME\E[0m\E[34m\" sans vous montrer les commandes !?\E[0m\E[0m"
        else
          echo -e " \E[34mSeriez-vous intéressé pour que j'installe pour vous \"\E[36m$PROGRAMME_NAME\E[0m\E[34m\" via les commandes ci-dessus !?\E[0m\E[0m"  
        fi

        select option in "Oui" "Non et retourner à la page d'accueil" "Non et allez à la page des applications"
        do
          case $option in
            "Oui")

              if [ $PROGRAMME_NAME = "mysql-version" ]; then
                RESULT=$(fct_which_name mysql)
              elif [ $PROGRAMME_NAME = "typescript" ]; then
                RESULT=$(fct_which_name tsc)
              else
                RESULT=$(fct_which_name $PROGRAMME_NAME)
              fi

              echo "Veuillez patienter, l'installation de $PROGRAMME_NAME va démarrer dans une seconde... (1s)"
              loading
              sleep 1

              if [ $PROGRAMME_NAME = "curl" ]; then
                sudo apt-get update -y
                sudo apt-get install $PROGRAMME_NAME -y
                fct_back_to "home"           
              elif [ $PROGRAMME_NAME = "node" ]; then
                curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
                sudo apt-get install -y nodejs
                fct_back_to "home"             
              elif [ $PROGRAMME_NAME = "git" ]; then
                sudo apt-get update
                sudo apt-get install $PROGRAMME_NAME
                fct_back_to "home"
              elif [ $PROGRAMME_NAME = "docker" ]; then
                sudo apt-get remove docker docker-engine docker.io containerd runc
                sudo apt-get update
                sudo apt-get install \
                    apt-transport-https \
                    ca-certificates \
                    curl \
                    gnupg-agent \
                    software-properties-common

                curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

                sudo add-apt-repository     "deb [arch=amd64] https://download.docker.com/linux/ubuntu     $(lsb_release -cs)     stable"
                sudo apt-get install docker-ce docker-ce-cli containerd.io

                sudo docker run hello-world
                systemctl start docker
                fct_back_to "home"
              
              elif [ $PROGRAMME_NAME = "php" ]; then
                sudo add-apt-repository ppa:ondrej/php -y
                sudo apt install php8.1 -y
                sudo apt install php8.1-mbstring 
                fct_back_to "home"

              elif [ $PROGRAMME_NAME = "mysql" ]; then
                sudo apt-get install mysql-server -y
                fct_back_to "home"             
              elif [ $PROGRAMME_NAME = "composer" ]; then
                php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
                php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
                php composer-setup.php
                php -r "unlink('composer-setup.php');"
                sudo mv composer.phar /usr/bin/composer
                fct_back_to "home"

              elif [ $PROGRAMME_NAME = "symfony" ]; then
                echo 'deb [trusted=yes] https://repo.symfony.com/apt/ /' | sudo tee /etc/apt/sources.list.d/symfony-cli.list
                sudo apt update
                sudo apt install symfony-cli
                sudo apt-get install php8.*-xml
                symfony check:requirements
                fct_back_to "home"
              
              
              # A FAIRE
              # elif [ $PROGRAMME_NAME = "vue" ]; then
              # elif [ $PROGRAMME_NAME = "react" ]; then


              # A TESTER
              elif [ $PROGRAMME_NAME = "angular" ]; then
                sudo npm install -g @angular/cli
                fct_back_to "home"

              elif [ $PROGRAMME_NAME = "typescript" ]; then
                sudo npm install -g typescript -y
                fct_back_to "home"

              # elif [ $PROGRAMME_NAME = "python" ]; then
              #   sudo add-apt-repository ppa:deadsnakes/ppa -y
              #   sudo apt-get install python3.10
              elif [ $PROGRAMME_NAME = "flutter" ]; then
                sudo snap install flutter --classic
                fct_back_to "home"

              # APPLICATIONS
              elif [ $PROGRAMME_NAME = "code" -o $PROGRAMME_NAME = "blender"  ]; then
                sudo snap install  $PROGRAMME_NAME --classic
                fct_back_to "app"
              elif [  $PROGRAMME_NAME = "mysql-workbench-community" -o $PROGRAMME_NAME = "chromium" -o $PROGRAMME_NAME = "firefox" -o $PROGRAMME_NAME = "brave" -o $PROGRAMME_NAME = "opera" -o $PROGRAMME_NAME = "figma-linux"  -o $PROGRAMME_NAME = "krita" -o $PROGRAMME_NAME = "postman" -o $PROGRAMME_NAME = "discord" -o $PROGRAMME_NAME = "spotify" -o $PROGRAMME_NAME = "thunderbird" -o $PROGRAMME_NAME = "obs-studio" -o $PROGRAMME_NAME = "vlc" -o $PROGRAMME_NAME = "okular" -o $PROGRAMME_NAME = "gimp" ]; then
                sudo snap install $PROGRAMME_NAME
                fct_back_to "app"
              elif [ $PROGRAMME_NAME = "kylin-video" ]; then
                sudo apt install kylin-video -y
                fct_back_to "app"
              elif [ $PROGRAMME_NAME = "android" ]; then
                wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.1.1.22/android-studio-2021.1.1.22-linux.tar.gz
                tar -xvf android-studio-2021.1.1.22-linux.tar.gz
                chmod u+x android-studio-2021.1.1.22-linux.tar.gz
                sudo mv android-studio ~/android-studio
                sudo chown -R $USER:$USER ~/android-studio
                echo "# Alias Android-Studio" | tee -a ~/.bashrc
                echo 'alias studio="~/android-studio/bin/studio.sh"' | tee -a ~/.bashrc
                source ~/.bashrc
                
                fct_back_to "app"
              fi
              break 
            ;;
            "Non et retourner à la page d'accueil")
              clear
              fct_show_home_menu
              break
            ;;
            "Non et allez à la page des applications")
              clear
              fct_show_app_menu
              break
            ;;
          esac
        done
        space
        break
      ;;

      "Désinstallation de $PROGRAMME_NAME")   
        # Désinstallation de la technologie
        space
        echo -e " \E[36m+ --------------------------------------------------------------------------- +\E[0m"
        echo -e " \E[36m|\E[0m \E[33mDésinstallations de $PROGRAMME_NAME\E[0m"
        echo -e " \E[36m+ --------------------------------------------------------------------------- +\E[0m"
        echo -e " \E[36m|\E[0m  \E[37mPour désinstaller $PROGRAMME_NAME, il aurait fallu taper les commandes suivantes :\E[0m"

        echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo apt-get update -y\E[0m"
        if [ $PROGRAMME_NAME = "curl" ]; then
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo apt-get remove $PROGRAMME_NAME -y\E[0m"
        elif [ $PROGRAMME_NAME = "git" ]; then
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo apt-get remove $PROGRAMME_NAME -y\E[0m"
        elif [ $PROGRAMME_NAME = "docker" ]; then
          echo "à éditer..."
        elif [ $PROGRAMME_NAME = "node" ]; then
          echo "à éditer..."
        elif [ $PROGRAMME_NAME = "php" ]; then
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo apt-get purge '$PROGRAMME_NAME*' -y\E[0m"
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo add-apt-repository --remove ppa:ondrej/php\E[0m"
        elif [ $PROGRAMME_NAME = "mysql" ]; then
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo apt-get remove $PROGRAMME_NAME -y\E[0m"
        elif [ $PROGRAMME_NAME = "composer" ]; then
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo rm -rf /usr/bin/composer\E[0m"
        elif [ $PROGRAMME_NAME = "symfony" ]; then
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo apt remove $PROGRAMME_NAME-cli -y\E[0m"
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo apt remove php8.*-xml\E[0m"

        elif [ $PROGRAMME_NAME = "angular" ]; then
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo npm uninstall -g @angular/cli\E[0m"

        elif [ $PROGRAMME_NAME = "typescript" ]; then
          echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo npm uninstall -g typescript -y\E[0m"

        # APPLICATIONS
        elif [  $PROGRAMME_NAME = "code" -o $PROGRAMME_NAME = "mysql-workbench-community" -o $PROGRAMME_NAME = "chromium" -o $PROGRAMME_NAME = "brave" -o $PROGRAMME_NAME = "opera" -o $PROGRAMME_NAME = "figma-linux"  -o $PROGRAMME_NAME = "krita" -o $PROGRAMME_NAME = "postman" -o $PROGRAMME_NAME = "discord" -o $PROGRAMME_NAME = "spotify" -o $PROGRAMME_NAME = "thunderbird" -o $PROGRAMME_NAME = "obs-studio" -o $PROGRAMME_NAME = "vlc" -o $PROGRAMME_NAME = "blender" -o $PROGRAMME_NAME = "okular" -o $PROGRAMME_NAME = "gimp" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo snap remove $PROGRAMME_NAME\E[0m"

        elif [ $PROGRAMME_NAME = "firefox" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt-get remove firefox\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo snap remove firefox\E[0m"

        elif [ $PROGRAMME_NAME = "android" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95mrm -rf android-studio-2021.1.1.22-linux.tar.gz\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95mrm -rf ~/android-studio\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msed '/# Alias Android-Studio/d' ~/.bashrc > ~/.bashrc_tmp\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msed '/alias studio=\"~\/android-studio\/bin\/studio.sh\"/d' ~/.bashrc_tmp > ~/.bashrc\E[0m"
          echo -e " \E[96m| \E[0m ⇨ \E[95msource ~/.bashrc\E[0m"
          
        elif [ $PROGRAMME_NAME = "kylin-video" ]; then
          echo -e " \E[96m| \E[0m ⇨ \E[95msudo apt remove kylin-video -y\E[0m"
        
        fi
        echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo apt-get autoclean -y\E[0m"
        echo -e " \E[96m|\E[0m  \E[37m⇨\E[0m \E[95msudo apt-get autoremove -y\E[0m"
        echo -e " \E[36m+ --------------------------------------------------------------------------- +\E[0m"
        space

        echo -e " \E[34mSouhaitez-vous que je désinstalle \"\E[0m\E[36m$PROGRAMME_NAME\E[0m\E[34m\" via les commandes ci-dessus pour vous !?\E[0m"
        select option in "Oui" "Non et retourner à la page d'accueil" "Non et allez à la page des applications"
        do
          case $option in
            "Oui")

              if [ $PROGRAMME_NAME = "mysql-version" ]; then
                RESULT=$(fct_which_name mysql)
              elif [ $PROGRAMME_NAME = "typescript" ]; then
                RESULT=$(fct_which_name tsc)
              else
                RESULT=$(fct_which_name $PROGRAMME_NAME)
              fi
              
              echo "Veuillez patienter, la désinstallation de $PROGRAMME_NAME va démarrer dans une seconde... (1s)"
              loading
              sleep 1

              if [ $PROGRAMME_NAME = "curl" ]; then
                sudo apt-get update
                sudo apt-get remove $PROGRAMME_NAME
              
              elif [ $PROGRAMME_NAME = "git" ]; then
                sudo apt-get update
                sudo apt-get remove $PROGRAMME_NAME

              elif [ $PROGRAMME_NAME = "docker" ]; then
                systemctl stop docker
                sudo apt-get remove docker docker-engine docker.io containerd runc
                sudo apt-get update
                sudo apt-get remove \
                    apt-transport-https \
                    ca-certificates \
                    curl \
                    gnupg-agent \
                    software-properties-common

                curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key remove -

                sudo add-apt-repository     "deb [arch=amd64] https://download.docker.com/linux/ubuntu     $(lsb_release -cs)     stable"
                sudo apt-get remove docker-ce docker-ce-cli containerd.io
              
              elif [ $PROGRAMME_NAME = "node" ]; then
                sudo apt-get remove -y nodejs
              
              elif [ $PROGRAMME_NAME = "php" ]; then
                sudo add-apt-repository ppa:ondrej/php -y
                sudo apt remove php8.0 -y

              elif [ $PROGRAMME_NAME = "mysql" ]; then
                sudo apt-get remove mysql-server -y
              
              elif [ $PROGRAMME_NAME = "composer" ]; then
                sudo rm -rf /usr/bin/composer

              elif [ $PROGRAMME_NAME = "symfony" ]; then
                sudo apt remove $PROGRAMME_NAME-cli -y
                sudo apt remove php8.*-xml
                fct_back_to "home"

              elif [ $PROGRAMME_NAME = "angular" ]; then
                sudo npm remove -g @angular/cli
                fct_back_to "home"

              elif [ $PROGRAMME_NAME = "typescript" ]; then
                sudo npm remove -g typescript -y
                fct_back_to "home"

              # elif [ $PROGRAMME_NAME = "python" ]; then
              #   sudo add-apt-repository ppa:deadsnakes/ppa -y
              #   sudo apt-get remove python3.10

              # APPLICATIONS
              elif [  $PROGRAMME_NAME = "code" -o $PROGRAMME_NAME = "mysql-workbench-community" -o $PROGRAMME_NAME = "chromium" -o $PROGRAMME_NAME = "brave" -o $PROGRAMME_NAME = "opera" -o $PROGRAMME_NAME = "figma-linux"  -o $PROGRAMME_NAME = "krita" -o $PROGRAMME_NAME = "postman" -o $PROGRAMME_NAME = "discord" -o $PROGRAMME_NAME = "spotify" -o $PROGRAMME_NAME = "thunderbird" -o $PROGRAMME_NAME = "obs-studio" -o $PROGRAMME_NAME = "vlc" -o $PROGRAMME_NAME = "blender" -o $PROGRAMME_NAME = "okular" -o $PROGRAMME_NAME = "gimp" ]; then
                sudo snap remove $PROGRAMME_NAME

              elif [ $PROGRAMME_NAME = "firefox" ]; then
                sudo apt-get remove $PROGRAMME_NAME
                sudo snap remove $PROGRAMME_NAME

              elif [ $PROGRAMME_NAME = "kylin-video" ]; then
                sudo apt remove $PROGRAMME_NAME -y

              elif [ $PROGRAMME_NAME = "android" ]; then
                rm -rf android-studio-2021.1.1.22-linux.tar.gz
                rm -rf ~/android-studio
                sed '/# Alias Android-Studio/d' ~/.bashrc > ~/.bashrc_tmp
                sed '/alias studio="~\/android-studio\/bin\/studio.sh"/d' ~/.bashrc_tmp > ~/.bashrc
                source ~/.bashrc
                fct_back_to "app"

              fi

              echo -e "\E[32m+ ------------------------------------------------------------------------------------------------ +\E[0m"
              echo -e "\E[33m\t\t✅ $PROGRAMME_NAME a bien été désinstallé de votre ordinateur avec succès!\E[0m"
              echo -e "\E[32m+ ------------------------------------------------------------------------------------------------ +\E[0m"
              space
              read -p "Pressez une touche pour continuer..."
              clear
              fct_show_home_menu
              break 
            ;;
            "Non et retourner à la page d'accueil")
              clear
              fct_show_home_menu
              break
            ;;
            "Non et allez à la page des applications")
              clear
              fct_show_app_menu
              break
            ;;
          esac
        done
        space
        break
      ;;

      "allez à la page des applications")
        clear
        fct_show_app_menu
        break
      ;;

      "allez à la page d'accueil")
        clear
        fct_show_home_menu
        break
      ;;
    esac
  done
}

fct_show_home_menu()          # Description : Affichage du menu principal
{

  fct_show_logo "chargement"
  loading
  clear

  fct_show_logo "accueil"

  echo -e "
    + ----------------- + ------------------------------------- + ------------------------------ +
    |  \E[36mCHOIX POSSIBLE\E[0m   |  \E[34mDESCRIPTION\E[0m                          |  \E[34mVERSION ACTUEL\E[0m     
    + ----------------- + ------------------------------------- + ------------------------------ +
    | \E[95m01\E[0m. \E[36mcURL\E[0m          |  \E[34mINDISPENSABLE\E[0m                        | $(fct_check_version curl)
    | \E[95m02\E[0m. \E[36mNode\E[91m*\E[0m\E[0m         |  \E[34mRuntime JavaScript\E[0m                   | $(fct_check_version node)
    | \E[95m03\E[0m. \E[36mGit\E[0m           |  \E[34mGérer ces projets sans crainte\E[0m       | $(fct_check_version git)
    | \E[95m04\E[0m. \E[36mDocker\E[91m*\E[0m\E[0m       |  \E[34mCréer des images de ces projets\E[0m      | $(fct_check_version docker)
    | \E[95m05\E[0m. \E[36mPHP\E[0m           |  \E[34mReprésente +50% des sites web\E[0m        | $(fct_check_version php)
    | \E[95m06\E[0m. \E[36mMySQL\E[0m         |  \E[34mBase de données\E[0m                      | $(fct_check_version mysql)
    | \E[95m07\E[0m. \E[36mComposer\E[0m      |  \E[34mUtile pour PHP, Symfony, Laravel\E[0m     | $(fct_check_version composer)
    | \E[95m08\E[0m. \E[36mSymfony\E[0m       |  \E[34mFramework PHP Français\E[0m               | $(fct_check_version symfony)
    | \E[95m09\E[0m. \E[36mVue\E[91m*\E[0m\E[0m          |  \E[34mFramework Javascript (facile)\E[0m        | $(fct_check_version vue)
    | \E[95m10\E[0m. \E[36mReact\E[91m*\E[0m\E[0m        |  \E[34mFramework Javascript (moyen)\E[0m         | $(fct_check_version react)
    | \E[95m11\E[0m. \E[36mAngular\E[0m       |  \E[34mFramework Javascript (dur)\E[0m           | $(fct_check_version angular)
    | \E[95m12\E[0m. \E[36mTypeScript\E[0m    |  \E[34mTyper son code JavaScript\E[0m            | $(fct_check_version typescript)
    | \E[95m13\E[0m. \E[36mPython\E[91m*\E[0m       |  \E[34mLangage surpuissant et simple\E[0m        | $(fct_check_version python)
    | \E[95m14\E[0m. \E[36mFlutter\E[0m       |  \E[34mConcevoir des apps mobile\E[0m            | $(fct_check_version flutter)
    + ----------------- + ------------------------------------- + ------------------------------ +
    | \E[33m15\E[0m. \E[37mApplications\E[0m  |  \E[37m\E[3mdes programmes utiles à installer très vite... ou à désinstaller\E[0m
    | \E[33m16\E[0m. \E[37mQuitter\E[0m
    + ----------------- + ------------------------------------- + ------------------------------ +"
  echo -e "\E[95m     ❗ À tout moment, vous pouvez taper sur\E[0m \E[36mCTRL + C\E[0m \E[95mpour stopper l'exécution du script.\E[0m"
  echo -e "\E[91m     ❌ *: Toutes les applications ou programme précédé d'un Astérix ne sont pas totalement finalisées.\E[0m"
  space

  select option in cURL Node Git Docker PHP MySQL Composer Symfony Vue React Angular TypeScript Python Flutter Applications Quitter
  do
    case $option in
      cURL)

        clear
        fct_show_logo "curl"
  
        echo -e " \E[34mDescription de \E[36m\E[1mcurl\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mcURL est un client HTTP libre et open source.\E[0m"
        echo -e "   ⇨ \E[37mIl est utilisé pour télécharger des fichiers sur internet.\E[0m"
        echo -e "   ⇨ \E[37mLa ressource est désignée à l'aide d'une URL et doit être d'un type supporté par le logiciel.\E[0m"
        space

        fct_show_version "curl"
        fct_info_programme "curl"

      ;;
      Applications)
        clear
        fct_show_app_menu
      ;;     
      Node)
        clear
        fct_show_logo "node"
  
        echo -e " \E[34mDescription de \E[36m\E[1mnode\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mNode.js est une plateforme logicielle libre en JavaScript,\E[0m"
        echo -e "   ⇨ \E[37morientée vers les applications réseau évènementielles hautement concurrentes qui doivent pouvoir monter en charge.\E[0m"
        echo -e "   ⇨ \E[37mElle utilise la machine virtuelle V8, la librairie libuv pour sa boucle d'évènements,\E[0m"
        echo -e "   ⇨ \E[37met implémente sous licence MIT les spécifications CommonJS.\E[0m"
        space

        echo -e " \E[34mDescription de \E[36m\E[1mnpm\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mnpm est le gestionnaire de paquets par défaut pour l'environnement d'exécution JavaScript Node.js\E[0m"
        echo -e "   ⇨ \E[37mde Node.js. npm se compose d'un client en ligne de commande, également appelé npm,\E[0m"
        echo -e "   ⇨ \E[37met d'une base de données en ligne de paquets publics et privés payants, appelée le registre npm.\E[0m"
        space

        fct_show_version "node"
        fct_info_programme "node"
      ;;
      Git)
        clear
        fct_show_logo "git"
  
        echo -e " \E[34mDescription de \E[36m\E[1mgit\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mGit est un logiciel de gestion de versions décentralisé.\E[0m"
        echo -e "   ⇨ \E[37mC'est un logiciel libre créé par Linus Torvalds, auteur du noyau Linux,\E[0m"
        echo -e "   ⇨ \E[37met distribué selon les termes de la licence publique générale GNU version 2.\E[0m"
        echo -e "   ⇨ \E[37mLe principal contributeur actuel de git et depuis plus de 16 ans est Junio C Hamano.\E[0m"
        space

        fct_show_version "git"
        fct_info_programme "git"
      ;;
      Docker)
        clear
        fct_show_logo "docker"
  
        echo -e " \E[34mDescription de \E[36m\E[1mdocker\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mDocker est une plateforme permettant de lancer certaines applications dans des conteneurs logiciels.\E[0m"
        echo -e "   ⇨ \E[37mSelon la firme de recherche sur l'industrie 451 Research,\E[0m"
        echo -e "   ⇨ \E[37m« Docker est un outil qui peut empaqueter une application et ses dépendances dans un conteneur isolé,\E[0m"
        echo -e "   ⇨ \E[37mqui pourra être exécuté sur n'importe quel serveur »\E[0m"
        space

        fct_show_version "docker"
        fct_info_programme "docker"
      ;;    
      PHP)
        clear
        fct_show_logo "php"
  
        echo -e " \E[34mDescription de \E[36m\E[1mphp\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mPHP: Hypertext Preprocessor, plus connu sous son sigle PHP, est un langage de programmation libre,\E[0m"
        echo -e "   ⇨ \E[37mprincipalement utilisé pour produire des pages Web dynamiques via un serveur HTTP,\E[0m"
        echo -e "   ⇨ \E[37mmais pouvant également fonctionner comme n'importe quel langage interprété de façon locale.\E[0m"
        echo -e "   ⇨ \E[37mPHP est un langage impératif orienté objet. \E[0m"
        space

        fct_show_version "php"
        fct_info_programme "php"
      ;;
      MySQL)
        clear
        fct_show_logo "mysql"
  
        echo -e " \E[34mDescription de \E[36m\E[1mmysql\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mMySQL est un système de gestion de bases de données relationnelles.\E[0m"
        echo -e "   ⇨ \E[37mIl est distribué sous une double licence GPL et propriétaire.\E[0m"
        space

        fct_show_version "mysql"
        fct_info_programme "mysql"
      ;;
      Composer)
        clear
        fct_show_logo "composer"
  
        echo -e " \E[34mDescription de \E[36m\E[1mcomposer\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mComposer est un logiciel gestionnaire de dépendances libre écrit en PHP.\E[0m"
        echo -e "   ⇨ \E[37mIl permet à ses utilisateurs de déclarer et d'installer les bibliothèques dont le projet principal a besoin.\E[0m"
        echo -e "   ⇨ \E[37mLe développement a débuté en avril 2011 et a donné lieu à une première version sortie le 1ᵉʳ mars 2012.\E[0m"
        space
  
        fct_show_version "composer"
        fct_info_programme "composer"
      ;;
      Symfony)
        clear
        fct_show_logo "symfony"
  
        echo -e " \E[34mDescription de \E[36m\E[1msymfony\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mSymfony est un ensemble de composants PHP ainsi qu'un framework MVC libre écrit en PHP.\E[0m"
        echo -e "   ⇨ \E[37mIl fournit des fonctionnalités modulables et adaptables qui permettent\E[0m"
        echo -e "   ⇨ \E[37mde faciliter et d’accélérer le développement d'un site web.\E[0m"
        space
 
        fct_show_version "symfony"
        fct_info_programme "symfony"
      ;;
      Vue)
        clear
        fct_show_logo "vue"
  
        echo -e " \E[34mDescription de \E[36m\E[1mvue\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mVue.js, est un framework JavaScript open-source utilisé pour construire des interfaces utilisateur\E[0m"
        echo -e "   ⇨ \E[37met des applications web monopages. Vue a été créé par Evan You\E[0m"
        echo -e "   ⇨ \E[37met est maintenu par lui et le reste des membres actifs de l'équipe principale travaillant\E[0m"
        echo -e "   ⇨ \E[37msur le projet et son écosystème.\E[0m"
        space

        fct_show_version "vue"
        fct_info_programme "vue"
      ;;
      React)
        clear
        fct_show_logo "react"
  
        echo -e " \E[34mDescription de \E[36m\E[1mreact\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mReact est une bibliothèque JavaScript libre développée par Facebook depuis 2013.\E[0m"
        echo -e "   ⇨ \E[37mLe but principal de cette bibliothèque est de faciliter la création d'application web monopage,\E[0m"
        echo -e "   ⇨ \E[37mvia la création de composants dépendant d'un état et générant une page HTML à chaque changement d'état.\E[0m"
        space
  
        fct_show_version "react"
        fct_info_programme "react"
      ;;
      Angular)
        clear
        fct_show_logo "angular"
  
        echo -e " \E[34mDescription d'\E[36m\E[1mangular\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mAngular est un framework côté client, open source, basé sur TypeScript,\E[0m"
        echo -e "   ⇨ \E[37met co-dirigé par l'équipe du projet « Angular » à Google et par une communauté de particuliers et de sociétés.\E[0m"
        echo -e "   ⇨ \E[37mAngular est une réécriture complète d'AngularJS, cadriciel construit par la même équipe.\E[0m"
        space
  
        fct_show_version "angular"
        fct_info_programme "angular"
      ;;
      TypeScript)
        clear
        fct_show_logo "typescript"
  
        echo -e " \E[34mDescription de \E[36m\E[1mtypescript\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mTypeScript est un langage de programmation libre et open source développé par Microsoft\E[0m"
        echo -e "   ⇨ \E[37mqui a pour but d'améliorer et de sécuriser la production de code JavaScript.\E[0m"
        echo -e "   ⇨ \E[37mIl s'agit d'un sur-ensemble syntaxique strict de JavaScript.\E[0m"
        space

        fct_show_version "typescript"
        fct_info_programme "typescript"
      ;;   
      Python)
        clear
        fct_show_logo "python"
  
        echo -e " \E[34mDescription de \E[36m\E[1mpython\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mPython est un langage de programmation interprété, multi-paradigme et multiplateformes.\E[0m"
        echo -e "   ⇨ \E[37mIl favorise la programmation impérative structurée, fonctionnelle et orientée objet.\E[0m"
        space

        fct_show_version "python"
        fct_info_programme "python"
      ;;
      Flutter)
        clear
        fct_show_logo "flutter"
  
        echo -e " \E[34mDescription de \E[36m\E[1mflutter\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mFlutter est un kit de développement logiciel d'interface utilisateur open-source créé par Google.\E[0m"
        echo -e "   ⇨ \E[37mIl est utilisé pour développer des applications pour :\E[0m"
        echo -e "      - \E[37mAndroid, iOS, Linux, Mac, Windows, Google Fuchsia et le web à partir d'une seule base de code.\E[0m"
        space

        echo -e " \E[34mDescription de \E[36m\E[1mDart\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mDart est un langage de programmation optimisé pour les applications sur plusieurs plateformes.\E[0m"
        echo -e "   ⇨ \E[37mIl est développé par Google et est utilisé pour créer des applications mobiles, de bureau, de serveur et web.\E[0m"
        echo -e "   ⇨ \E[37mDart est un langage orienté objet, basé sur la classe, récupérateur de mémoire avec une syntaxe de type C.\E[0m"
        space
  
        fct_show_version "flutter"
        fct_info_programme "flutter"
      ;;
      Quitter)
        space
        echo -e "\E[37m  ⇨  Vous pouvez saisir dans votre terminal la commande\E[0m \E[36mclear\E[0m \E[37mpour nettoyer celui-ci.\E[0m" 
        echo -e "\E[37m  ⇨  Je vous remercie chaleureusement d'avoir essayé ce script.\E[0m" 
        echo -e "\E[37m  ⇨  Amicalement\E[0m \E[36mZyrass\E[0m" 
        space
        exit
      ;;
    esac
  done
}

fct_show_app_menu() {

  fct_show_logo "applications"

  # TABLEAU DES PROGRAMMES
  echo -e "
    + -------------------- + ------------------------------------------ + ---------------------------------- +
    |  \E[36mCHOIX POSSIBLE\E[0m      |  \E[34mDESCRIPTION\E[0m                               | \E[34mVERSION ACTUEL\E[0m     
    + -------------------- + ------------------------------------------ + ---------------------------------- +
    | \E[95m01\E[0m. \E[36mVS.Code\E[0m          |  \E[34mLe plus utilisé aujourd'hui\E[0m               | \E[32m$(fct_which_name code)\E[0m
    | \E[95m02\E[0m. \E[36mMySQL Workbench\E[0m  |  \E[34mManipule une base de données open source\E[0m  | \E[32m$(fct_which_name mysql-workbench-community)\E[0m
    | \E[95m03\E[0m. \E[36mChromium\E[0m         |  \E[34mNavigateur web\E[0m                            | \E[32m$(fct_which_name chromium)\E[0m
    | \E[95m04\E[0m. \E[36mFirefox\E[0m          |  \E[34mNavigateur web\E[0m                            | \E[32m$(fct_which_name firefox)\E[0m
    | \E[95m05\E[0m. \E[36mBrave\E[0m            |  \E[34mNavigateur web\E[0m                            | \E[32m$(fct_which_name brave)\E[0m
    | \E[95m06\E[0m. \E[36mOpera\E[0m            |  \E[34mNavigateur web\E[0m                            | \E[32m$(fct_which_name opera)\E[0m
    | \E[95m07\E[0m. \E[36mPostman\E[0m          |  \E[34mGérer ces API en toute tranquillité\E[0m       | \E[32m$(fct_which_name postman)\E[0m
    | \E[95m08\E[0m. \E[36mFigma\E[0m            |  \E[34mConcevez vos mockups avec classe\E[0m          | \E[32m$(fct_which_name figma-linux)\E[0m
    | \E[95m09\E[0m. \E[36mKrita\E[0m            |  \E[34mLe Photoshop open source\E[0m                  | \E[32m$(fct_which_name krita)\E[0m
    | \E[95m10\E[0m. \E[36mDiscord\E[0m          |  \E[34mTchaté avec vos amis et collègue\E[0m          | \E[32m$(fct_which_name discord)\E[0m
    | \E[95m11\E[0m. \E[36mSpotify\E[0m          |  \E[34mÉcouter votre musique préféré\E[0m             | \E[32m$(fct_which_name spotify)\E[0m
    | \E[95m12\E[0m. \E[36mThunderbird\E[0m      |  \E[34mGérer ces mail avec classe\E[0m                | \E[32m$(fct_which_name thunderbird)\E[0m
    | \E[95m13\E[0m. \E[36mKylin-Video\E[0m      |  \E[34mUn lecteur vidéo sympatiques\E[0m              | \E[32m$(fct_which_name kylin-video)\E[0m
    | \E[95m14\E[0m. \E[36mOBS-Studio\E[0m       |  \E[34mCréér ses propres vidéos\E[0m                  | \E[32m$(fct_which_name obs-studio)\E[0m
    | \E[95m15\E[0m. \E[36mBlender\E[0m          |  \E[34mModéliser des objets en 3D\E[0m                | \E[32m$(fct_which_name blender)\E[0m
    | \E[95m16\E[0m. \E[36mVLC\E[0m              |  \E[34mLecteur Vidéo\E[0m                             | \E[32m$(fct_which_name vlc)\E[0m
    | \E[95m17\E[0m. \E[36mOkular\E[0m           |  \E[34mLecteur PDF et bien plus encore\E[0m           | \E[32m$(fct_which_name okular)\E[0m
    | \E[95m18\E[0m. \E[36mGIMP\E[0m             |  \E[34mLogiciel de dessin\E[0m                        | \E[32m$(fct_which_name gimp)\E[0m
    | \E[95m19\E[0m. \E[36mAndroid-Studio\E[91m*\E[0m\E[0m  |  \E[34mÉditeur d'application mobile\E[0m              | \E[32m$(fct_check_version android)\E[0m
    + -------------------- + ------------------------------------------ + ---------------------------------- +
    | \E[33m20\E[0m. Retour
    | \E[33m21\E[0m. Quitter
    + -------------------- + ------------------------------------------ + ---------------------------------- +"
  echo -e "\E[95m       ❗ À tout moment, vous pouvez taper sur\E[0m \E[36mCTRL + C\E[0m \E[95mpour stopper l'exécution du script.\E[0m"
  echo -e "\E[91m       ❌ *: Toutes les applications ou programme précédé d'un Astérix ne sont pas totalement finalisées.\E[0m"
  space

  PS3="
  Quel est votre choix : "

  select option in VS.Code MySQL-Workbench Chromium Firefox Brave Opera Postman Figma-Linux Krita Discord Spotify Thunderbird Kylin-Video OBS-Studio Blender VLC Okular GIMP Android Menu_Principal Quitter
  do
    case $option in
      VS.Code)
        clear
        fct_show_logo "code"
  
        echo -e " \E[34mDescription de \E[36m\E[1mcode\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mVisual Studio Code est un éditeur de code extensible développé par Microsoft pour Windows, Linux et macOS.\E[0m"
        echo -e "   ⇨ \E[37mLes fonctionnalités incluent la prise en charge du débogage, la mise en évidence de la syntaxe,\E[0m"
        echo -e "   ⇨ \E[37mla complétion intelligente du code, les snippets, la refactorisation du code et Git intégré.\E[0m"
        space
  
        fct_show_version "code"
        fct_info_programme "code"
      ;;
      MySQL-Workbench)
        clear
        fct_show_logo "mysql-workbench-community"
  
        echo -e " \E[34mDescription de \E[36m\E[1mmysql-workbench-community\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mMySQL Community Edition est la version librement téléchargeable de la base de données open source la plus populaire au monde.\E[0m"
        echo -e "   ⇨ \E[37mElle est disponible sous la licence GPL et bénéficie du soutien d'une vaste\E[0m"
        echo -e "   ⇨ \E[37met active communauté de développeurs open source.\E[0m"
        space
    
        fct_show_version "mysql-workbench-community"
        fct_info_programme "mysql-workbench-community"
      ;;
      Chromium)
        clear
        fct_show_logo "chromium"
  
        echo -e " \E[34mDescription de \E[36m\E[1mchromium\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mChromium est un navigateur web libre développé par l’organisation Chromium Project créée par Google en 2008.\E[0m"
        echo -e "   ⇨ \E[37mChromium sert de base à plusieurs autres navigateurs,\E[0m"
        echo -e "   ⇨ \E[37mdont certains open-source ou certains propriétaires.\E[0m"
        echo -e "   ⇨ \E[37mLe moteur de rendu de Chromium s'appelle Blink.\E[0m"
        space
                   
        fct_show_version "chromium"
        fct_info_programme "chromium"
        ;;
      Firefox)
        clear
        fct_show_logo "firefox"
  
        echo -e " \E[34mDescription de \E[36m\E[1mfirefox\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mMozilla Firefox est un navigateur web libre et gratuit disponible pour PC et mobiles,\E[0m"
        echo -e "   ⇨ \E[37mdéveloppé et distribué par la Mozilla Foundation depuis 2003, avec l'aide de milliers de bénévoles.\E[0m"
        echo -e "   ⇨ \E[37mL'entreprise Mozilla Corporation est créée en 2005 pour se charger du développement.\E[0m"
        space
                
        fct_show_version "firefox"
        fct_info_programme "firefox"
        ;;
      Brave)
        clear
        fct_show_logo "brave"
  
        echo -e " \E[34mDescription de \E[36m\E[1mbrave\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mBrave est un navigateur web open source gratuit disponible sur Windows, macOS et Linux ainsi que sur iOS et Android.\E[0m"
        echo -e "   ⇨ \E[37mIl a pour objectif de protéger la vie privée de ses utilisateurs en bloquant par défaut les pisteurs\E[0m"
        echo -e "   ⇨ \E[37met en permettant la navigation via le réseau Tor.\E[0m"
        space
              
        fct_show_version "brave"
        fct_info_programme "brave"
        ;;
      Opera)
        clear
        fct_show_logo "opera"
  
        echo -e " \E[34mDescription d'\E[36m\E[1mopera\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mOpera est un navigateur web gratuit développé par la société norvégienne Opera Software depuis 1995.\E[0m"
        echo -e "   ⇨ \E[37mLe navigateur est disponible sur PC et mobiles.\E[0m"
        echo -e "   ⇨ \E[37mOpera totalise environ 1,9 % de parts de marché des navigateurs web, et environ 2,3 % sur les mobiles en mars 2021.\E[0m"
        space
            
        fct_show_version "opera"
        fct_info_programme "opera"
        ;;
      Postman)
        clear
        fct_show_logo "postman"
  
        echo -e " \E[34mDescription de \E[36m\E[1mpostman\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mPostman est une application permettant de tester des API,\E[0m"
        echo -e "   ⇨ \E[37mcréée en 2012 par Abhinav Asthana, Ankit Sobti et Abhijit Kane à Bangalore\E[0m"
        echo -e "   ⇨ \E[37mpour répondre à une problématique de test d'API partageable.\E[0m"
        space
          
        fct_show_version "postman"
        fct_info_programme "postman"
        ;;      
      Figma-Linux)
        clear
        fct_show_logo "figma-linux"
  
        echo -e " \E[34mDescription de \E[36m\E[1mfigma\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mFigma est ou outil de design collaboratif qui permet aux UX/UI designers de prototyper les interfaces graphiques.\E[0m"
        echo -e "   ⇨ \E[37mIl aide notamment à concevoir sites web, applications et autres interfaces utilisateur.\E[0m"
        space
         
        fct_show_version "figma-linux"
        fct_info_programme "figma-linux"
        ;;    
      Krita)
        clear
        fct_show_logo "krita"
  
        echo -e " \E[34mDescription de \E[36m\E[1mkrita\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mKrita est un outil de peinture numérique GRATUIT et Open Source conçu pour les artistes concepteurs, illustrateurs, artistes en texture\E[0m"
        echo -e "   ⇨ \E[37met matte painting ainsi que pour le domaine VFX (Effets Visuels).\E[0m"
        echo -e "   ⇨ \E[37mKrita est en développement depuis plus de dix ans et connaît tout récemment une explosion de croissance.\E[0m"
        echo -e "   ⇨ \E[37mIl offre de nombreuses caractéristiques communes et innovantes pour aider de la même façon les amateurs comme les professionnels.\E[0m"
        echo -e "   ⇨ \E[37mDécouvrez quelques fonctionnalités intéressantes plus bas.\E[0m"
        space
        
        fct_show_version "krita"
        fct_info_programme "krita"
        ;;
      Discord)
        clear
        fct_show_logo "discord"
  
        echo -e " \E[34mDescription de \E[36m\E[1mdiscord\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mDiscord est un logiciel propriétaire gratuit de VoIP et de messagerie instantanée.\E[0m"
        echo -e "   ⇨ \E[37mIl fonctionne sur les systèmes d’exploitation Windows, macOS, Linux, Android, iOS ainsi que sur les navigateurs web.\E[0m"
        echo -e "   ⇨ \E[37mLa plateforme comptabilise le 21 juillet 2019 plus de 250 millions d'utilisateurs.\E[0m"
        space
      
        fct_show_version "discord"
        fct_info_programme "discord"
        ;;
      Spotify)
        clear
        fct_show_logo "spotify"
  
        echo -e " \E[34mDescription de \E[36m\E[1mspotify\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mSpotify est un service suédois de streaming musical sous la forme d'un logiciel propriétaire et d'un site web.\E[0m"
        echo -e "   ⇨ \E[37mCette plateforme de distribution numérique permet une écoute quasi instantanée de fichiers musicaux.\E[0m"
        space
    
        fct_show_version "spotify"
        fct_info_programme "spotify"
        ;;
      Thunderbird)
        clear
        fct_show_logo "thunderbird"
  
        echo -e " \E[34mDescription de \E[36m\E[1mthunderbird\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mMozilla Thunderbird est un client de messagerie, libre,\E[0m"
        echo -e "   ⇨ \E[37mdistribué gratuitement par la fondation Mozilla et issu du projet Mozilla.\E[0m"
        space
   
        fct_show_version "thunderbird"
        fct_info_programme "thunderbird"
        ;;
      Kylin-Video)
        clear
        fct_show_logo "kylin-video"
  
        echo -e " \E[34mDescription de \E[36m\E[1mkylin-video\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mKylin Video is an open source video player based on SMPlayer and developed using Qt5.\E[0m"
        echo -e "   ⇨ \E[37mIt supports playback of most video formats, with a fresh interface style and simple user operations.\E[0m"
        space
  
        fct_show_version "kylin-video"
        fct_info_programme "kylin-video"
      ;;
      OBS-Studio)
        clear
        fct_show_logo "obs-studio"
  
        echo -e " \E[34mDescription d'\E[36m\E[1mobs-studio\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mOBS Studio, abrégé en OBS, est un logiciel libre et open source de capture d'écran\E[0m"
        echo -e "   ⇨ \E[37met de streaming pour Microsoft Windows, MacOS et Linux.\E[0m"
        echo -e "   ⇨ \E[37mIl remplace Open Broadcaster Software et devient ainsi multiplateforme.\E[0m"
        space
     
        fct_show_version "obs-studio"
        fct_info_programme "obs-studio"
        ;;
      Blender)
        clear
        fct_show_logo "blender"
  
        echo -e " \E[34mDescription de \E[36m\E[1mblender\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mBlender est un logiciel libre de modélisation, d’animation par ordinateur et de rendu en 3D, créé en 1998.\E[0m"
        echo -e "   ⇨ \E[37mIl est actuellement développé par la Fondation Blender.\E[0m"
        echo -e "   ⇨ \E[37mDepuis 2019 le logiciel Blender est de plus en plus reconnu par les entreprises du secteur de l'animation 3D,\E[0m"
        echo -e "   ⇨ \E[37mcomme Epic Games, Ubisoft et NVIDIA.\E[0m"
        space
                     
        fct_show_version "blender"
        fct_info_programme "blender"
        ;;
      VLC)
        clear
        fct_show_logo "vlc"
  
        echo -e " \E[34mDescription de \E[36m\E[1mvlc\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mVLC media player est un lecteur multimédia, libre et gratuit issu du projet VideoLAN.\E[0m"
        echo -e "   ⇨ \E[37mCe logiciel multiplateforme, créé et maintenu en France, fonctionne entre autres sous Windows, GNU/Linux, BSD, macOS, iOS, Android,\E[0m"
        echo -e "   ⇨ \E[37msoit en tout près de 20 plates-formes. Il est distribué sous GPL et disponible dans 69 langues.\E[0m"
        space
                  
        fct_show_version "vlc"
        fct_info_programme "vlc"
        ;;
      Okular)
        clear
        fct_show_logo "okular"
  
        echo -e " \E[34mDescription d'\E[36m\E[1mokular\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mOkular est la visionneuse de documents de KDE4.\E[0m"
        echo -e "   ⇨ \E[37mIl est basé sur KPDF et remplace KPDF, KGhostView, KFax, KFaxview, KDVI dans KDE4.\E[0m"
        echo -e "   ⇨ \E[37mCette fonctionnalité peut être facilement incorporée à d’autres applications.\E[0m"
        echo -e "   ⇨ \E[37mOkular a démarré lors du Google Summer of Code en 2005 ; Piotr Szymanski est l’étudiant qui a été retenu.\E[0m"
        space
                
        fct_show_version "okular"
        fct_info_programme "okular"
        ;;
      GIMP)
        clear
        fct_show_logo "gimp"
  
        echo -e " \E[34mDescription de \E[36m\E[1mgimp\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mGIMP, ou anciennement « The GIMP », est un outil d'édition et de retouche d'image,\E[0m"
        echo -e "   ⇨ \E[37mdiffusé sous la licence GPLv3 comme un logiciel gratuit et libre.\E[0m"
        echo -e "   ⇨ \E[37mIl en existe des versions pour la plupart des systèmes d'exploitation dont GNU/Linux, macOS et Microsoft Windows.\E[0m"
        space
             
        fct_show_version "gimp"
        fct_info_programme "gimp"
        ;;

      Android)
        clear
        fct_show_logo "android"
  
        echo -e " \E[34mDescription d'\E[36m\E[1mandroid\E[0m\E[0m :\E[0m"
        echo -e "   ⇨ \E[37mAndroid est un système d'exploitation mobile fondé sur le noyau Linux\E[0m"
        echo -e "   ⇨ \E[37met développé par des informaticiens sponsorisés par Google.\E[0m"
        space
             
        fct_show_version "android"
        fct_info_programme "android"
        ;;
      Menu_Principal)
        clear
        fct_show_home_menu
        ;;
      Quitter)
        space
        echo -e "\E[37m  ⇨  Vous pouvez saisir dans votre terminal la commande\E[0m \E[36mclear\E[0m \E[37mpour nettoyer celui-ci.\E[0m" 
        echo -e "\E[37m  ⇨  Ou bien, vous pouvez taper sur\E[0m \E[36mCTRL + C\E[0m \E[37mpour stopper l'exécution du script à tout moment.\E[0m" 
        space
        echo -e "\E[37m  ⇨  Je vous remercie d'avoir essayé ce script.\E[0m" 
        echo -e "\E[37m  ⇨  Amicalement\E[0m \E[36mZyrass\E[0m" 
        space
        exit
        ;;
    esac
  done
}

# PROGRAMME

space
echo -e "\t\E[36mPour une meilleure expérience,\E[0m"
echo -e "\t\E[36mveuillez lancer le script en mode pleine écran.\E[0m"
space
read -p "Veuillez appuyer sur Entrée pour continuer."
clear

fct_show_logo dyma
fct_message_presentation
fct_show_home_menu