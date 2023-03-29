#!/bin/bash

echo "criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "diretórios criados"

echo "criando grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "grupos criados"

echo "criandos usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Caue020892) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Caue020892) -G GRP_ADM
useradd joaos -m -s /bin/bash -p $(openssl passwd -1 Caue020892) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 Caue020892) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Caue020892) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Caue020892) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Caue020892) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Caue020892) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Caue020892) -G GRP_SEC

echo "usuarios criados"

echo "permissoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM"




