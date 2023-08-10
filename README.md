<div align="center">
    <img src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white"/>
    <img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white"/>
    <img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white"/>
</div>


### CRUD com PHP, MySQL e Bootstrap

O código PHP conectar-se ao banco de dados (HOST, USER, PASS, BASE) e estabelece uma conexão por meio da classe mysqli.

```php
<?php 
    define("HOST", "localhost");  // Nome do host do banco de dados
    define("USER", "root");       // Usuário do banco de dados
    define("PASS", "");           // Senha do usuário
    define("BASE", "cadastro");   // Nome do banco de dados

    $conn = new mysqli(HOST, USER, PASS, BASE);
?>
```

#### Modelo do banco de dados MySQL, usado no projeto

```sql
-- modelo do banco MYSQL usado no projeto! --

-- Criar o banco de dados
CREATE DATABASE cadastro;

-- Usar o banco de dados criado
USE cadastro;

-- Criar a tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_nasc DATE
);

-- Inserir um usuário
INSERT INTO usuarios (nome, email, senha, data_nasc)
VALUES ('Nome do Usuário', 'usuario@email.com', MD5('senha123'), '2000-01-01');

-- Atualizar um usuário
UPDATE usuarios
SET nome = 'Novo Nome', email = 'novo@email.com', senha = MD5('novasenha123'), data_nasc = '1995-05-10'
WHERE id = 1;

-- Excluir um usuário
DELETE FROM usuarios WHERE id = 1;

-- Selecionar todos os usuários
SELECT * FROM usuarios;

```

Em seguida, o código lida com as operações do CRUD. Dependendo do valor de $_REQUEST["acao"], que é passado através dos formulários, o código executa operações de criação, edição e exclusão de registros no banco de dados. Essas operações são essenciais para a funcionalidade completa do sistema.


O formulário para criação de novos usuários permite que adicionem novos registros facilmente no banco de dados.

<img src="https://github.com/cezardev07/crud-php-mysql-bootstrap/blob/main/public/new-user.png?raw=true" width="100%"/>

Além disso, o código inclui uma tabela que exibe todos os usuários presentes no banco de dados. Para cada usuário, informações como nome, e-mail, data de nascimento e ações para editar ou excluir o usuário são exibidas de maneira organizada.

<img src="https://github.com/cezardev07/crud-php-mysql-bootstrap/blob/main/public/list-users.png?raw=true" width="100%"/>

Este projeto é dedicado principalmente a propósitos educacionais e de aprendizado. É essencial reconhecer a importância da segurança ao lidar com bancos de dados e formulários. É fundamental ressaltar que este código não possui proteções contra ameaças potenciais, como SQL injection (injeção de SQL). Portanto, recomenda-se enfaticamente que este projeto seja utilizado apenas para fins educacionais e de aprendizado, a fim de compreender os conceitos básicos do CRUD com PHP, MySQL e Bootstrap. Para aplicações em ambientes de produção, é importante adotar medidas de segurança robustas para garantir a integridade e confidencialidade dos dados.


### get started project

    # clone o repositorio
    git clone < repositorio >

    # open project
    cd ./ < name project >

    # started application
    started xampp / Apache / MySQL
    if you are going to use xampp be sure to put the project in htdocs
