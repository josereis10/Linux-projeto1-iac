#!/bin/bash

echo "Criando Diretórios.......!!!"

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publica

echo "Criando Grupos de Usuários...........!!!"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários........!!!"

useradd carlos -c "Carlos da Silva" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c "Maria dos Anjos" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -c "João Bosco" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -c "Debora Nascimento" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Rodrigues" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -c "Roberto Jefferson" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -c "Josefina dos Santos" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -c "Amanda Antunes" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio de Souza" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC


echo "Especificando Permissões.......!!!"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica



echo "THE END...............!!!!"


