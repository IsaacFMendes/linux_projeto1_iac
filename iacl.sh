#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

echo "carlos"
useradd carlos -m -s /bin/bash -G GRP_ADM 
passwd carlos

echo "maria"
useradd maria -m -s /bin/bash -G GRP_ADM
passwd maria

echo "joao"
useradd joao -m -s /bin/bash -G GRP_ADM
passwd joao 

echo "debora"
useradd debora -m -s /bin/bash -G GRP_VEN
passwd debora

echo "sebastiana"
useradd sebastiana -m -s /bin/bash -G GRP_VEN
passwd sebastiana

echo "roberto"
useradd roberto -m -s /bin/bash -G GRP_VEN
passwd roberto

echo "josefina"
useradd josefina -m -s /bin/bash -G GRP_SEC
passwd josefina

echo "amanda"
useradd amanda -m -s /bin/bash -G GRP_SEC
passwd amanda

echo "rogerio"
useradd rogerio -m -s /bin/bash -G GRP_SEC
passwd rogerio

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script Finalizado!!!"

