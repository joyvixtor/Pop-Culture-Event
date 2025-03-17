# Pop-Culture-Event
Bulding a database project for a Pop Culture Event in MySQL and Spring Boot for its API.

# Povoamento e Consultas SQL
Neste diretório, nós temos três arquivos .sql que fazem parte da construção do Banco de Dados do projeto e da realização de algumas consultas.
## creatingTables.sql
É o arquivo responsável por criar as tabelas do Banco de Dados.
## generateData.sql
É o arquivo com os comandos para o povoamento do Banco de Dados.
## consultas.sql
Arquivo com consultas variadas para verificar determinadas informações que estão inseridas no Banco de Dados.

# Criando Banco de Dados no PostgreSQL
Ao instalar o PostgreSQL no seu computador, siga as seguintes instruções abaixo:
## 1. Criando um banco de dados
```sql
CREATE DATABASE evento_cultura_pop;
```
## 2. Criando um usuário
```sql
CREATE USER postgres WITH ENCRYPTED PASSWORD 'projetobancodedados123';
GRANT ALL PRIVILEGES ON DATABASE evento_cultura_pop TO postgres;
```
## 3. Rode os scripts creatingTables e generateData
Dentro do _Query Tool Workspace_ do PostgreeSQL/pgAdmin 4, rode os scripts dentro dos arquivos _creatingTables.sql_ e _generateData.sql_. Eles são responsáveis por criar as tabelas e povoá-las com os dados necessários.

# API em Spring Boot
Dentro do folder Culture-Pop-Event, rode o arquivo _CulturePopEventApplication.java_ para iniciar a APi no http://localhost:8081/ . Dentro do folder _controler_ é possível visualizar alguns endpoints que foram construídos para interagir com as informações dentro do banco de dados criado no PostgreSQL.