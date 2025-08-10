# Projeto de Rotina com Ubuntu, Cron e MySQL  
Routine Project with Ubuntu, Cron and MySQL

---

## Descrição / Description

Este projeto consiste em um ambiente Docker baseado em Ubuntu, configurado para importar registros SQL automaticamente e realizar backups periódicos dos registros armazenados no banco MySQL via cron.

This project consists of a Docker-based Ubuntu environment configured to automatically import SQL records and perform periodic backups of records stored in the MySQL database using cron.

---

## Estrutura do Projeto / Project Structure

- `DockerfileUbuntu`: Container Ubuntu com cron e cliente MySQL instalados.  
  Ubuntu container with cron and MySQL client installed.

- `DockerfileBD`: Container MySQL configurado com senha root e importação inicial de arquivos SQL.  
  MySQL container configured with root password and initial SQL files import.

- `cron/agendamento`: Arquivo com configuração do cron para execução dos backups.  
  Cron configuration file for running backups.

- `arquivos_sql/`: Diretório contendo arquivos `.sql` para importação inicial no banco de dados.  
  Directory containing `.sql` files for initial database import.

- `docker-compose.yml`: Orquestração dos containers Ubuntu (agendador) e MySQL.  
  Docker Compose file orchestrating Ubuntu (scheduler) and MySQL containers.

---

## Como usar / How to use

### 1. Build e subir os containers / Build and start the containers

```bash
docker-compose up --build -d

