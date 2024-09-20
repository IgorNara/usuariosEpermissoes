#!/bin/bash
sudo groupadd aluno
sudo groupadd professor
sudo groupadd gerente
sudo mkdir /srv
sudo chown root:gerente /srv
sudo mkdir /srv/alunos
sudo mkdir /srv/professores
sudo chown root:aluno /srv/alunos
sudo chown root:professor /srv/professores
sudo chmod 750 /srv
sudo chmod 770 /srv/alunos
sudo chmod 770 /srv/professores
sudo useradd --home /srv/professores/bruno --create-home --gid professor --gecos "" --disabled-login bruno
sudo usermod -aG gerente bruno
sudo useradd --home /srv/alunos/joao --create-home --gid aluno --gecos "" --disabled-login joao
sudo useradd --home /srv/alunos/maria --create-home --gid aluno --gecos "" --disabled-login maria
sudo chage --expiredate 2024-12-31 joao
sudo chage --expiredate 2024-12-31 maria
sudo chage --maxdays 90 joao
sudo chage --maxdays 90 maria

