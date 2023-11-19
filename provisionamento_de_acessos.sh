#!/bin/bash

#Criando os diretórios
echo "Criando os diretórios..."
mkdir /publico /adm /ven /sec

#Criando os grupos de usuários
echo "Criando os grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#Criando os usuários
echo "Criando os usuários..."
## Usuários do grupo ADM
userdd carlos -m -c "Carlos" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
userdd maria -m -c "Maria" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
userdd joao -m -c "João" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
## Usuários do grupo VEN
userdd debora -m -c "Debora" -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
userdd sebastiana -m -c "Sebastiana" -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
userdd roberto -m -c "Roberto" -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
## Usuários do grupo SEC
userdd josefina -m -c "Josefina" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
userdd amanda -m -c "Amanda" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
userdd rogerio -m -c "Rogério" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)

#Atribuindo os grupos as pastas
echo "Atribuindo os grupos as pastas..."
chown -R root:root /publico
chown -R root:GRP_ADM /adm
chown -R root:GRP_VEN /ven
chown -R root:GRP_SEC /sec

#Ajustando as permissões de acesso das pastas
echo "Ajustando as permissões de acesso das pastas..."
chmod -R 777 /publico
chmod -R 770 /adm /ven /sec

echo "Processo finalizado."