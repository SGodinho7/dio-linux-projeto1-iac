#!/bin/bash

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados"

useradd -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt senha123) -c "Usuario qualquer" carlos
useradd -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt senha123) -c "Usuario qualquer" maria
useradd -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt senha123) -c "Usuario qualquer" joao

useradd -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt senha123) -c "Usuario qualquer" debora
useradd -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt senha123) -c "Usuario qualquer" sebastiana
useradd -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt senha123) -c "Usuario qualquer" roberto

useradd -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt senha123) -c "Usuario qualquer" josefina
useradd -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt senha123) -c "Usuario qualquer" amanda
useradd -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt senha123) -c "Usuario qualquer" rogerio

echo "Usuários criados"

chmod 777 /publico

chown root:GRP_ADM /adm
chgrp root:GRP_VEN /ven
chgrp root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões configuradas"
