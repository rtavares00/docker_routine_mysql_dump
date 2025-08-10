-- Criar o banco de dados
CREATE DATABASE valgode;
USE valgode;

-- Tabela usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade INT,
    criado_em DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Inserir dados aleatórios em usuarios
INSERT INTO usuarios (nome, email, idade) VALUES
('Ana Silva', 'ana.silva@email.com', 28),
('Bruno Costa', 'bruno.costa@email.com', 35),
('Carla Souza', 'carla.souza@email.com', 22),
('Diego Ramos', 'diego.ramos@email.com', 40),
('Elaine Pereira', 'elaine.pereira@email.com', 31);

-- Tabela produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

-- Inserir dados aleatórios em produtos
INSERT INTO produtos (nome, preco, estoque) VALUES
('Teclado Mecânico', 299.90, 15),
('Mouse Gamer', 149.50, 40),
('Monitor 24"', 899.00, 10),
('Cadeira Gamer', 1200.00, 5),
('Headset', 250.75, 25);

-- Tabela pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    produto_id INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserir dados aleatórios em pedidos
INSERT INTO pedidos (usuario_id, produto_id, quantidade, data_pedido) VALUES
(1, 2, 1, '2025-07-01'),
(3, 1, 2, '2025-07-02'),
(2, 5, 1, '2025-07-03'),
(4, 3, 1, '2025-07-04'),
(5, 4, 1, '2025-07-05');
