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
