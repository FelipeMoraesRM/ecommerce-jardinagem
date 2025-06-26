-- Criação da tabela de produtos (mercadorias)
CREATE TABLE mercadorias (
    cod_mercadoria INT PRIMARY KEY,
    produto VARCHAR(100) NOT NULL,
    valor_unitario DECIMAL(8,2) NOT NULL,
    qtd_estoque INT NOT NULL CHECK (qtd_estoque >= 0),
    categoria_item VARCHAR(50)
);

-- Inserção de dados em mercadorias
INSERT INTO mercadorias (cod_mercadoria, produto, valor_unitario, qtd_estoque, categoria_item) VALUES
(101, 'Sementes de Manjericão', 12.90, 100, 'Sementes'),
(102, 'Regador de Cobre 2L', 89.90, 20, 'Ferramentas'),
(103, 'Vaso Autoirrigável', 35.00, 50, 'Vasos');

-- Criação da tabela de vendas
CREATE TABLE vendas (
    cod_pedido INT PRIMARY KEY,
    data_venda DATE NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    cod_mercadoria INT NOT NULL,
    qtd_comprada INT NOT NULL CHECK (qtd_comprada > 0),
    FOREIGN KEY (cod_mercadoria) REFERENCES mercadorias(cod_mercadoria)
);

-- Inserção de dados em vendas
INSERT INTO vendas (cod_pedido, data_venda, nome_cliente, cod_mercadoria, qtd_comprada) VALUES
(5001, '2025-06-25', 'Amanda Silva', 101, 3),
(5002, '2025-06-26', 'José Ramos', 103, 2),
(5003, '2025-06-26', 'Marina Oliveira', 102, 1);

-- Atualização de preço de um produto
UPDATE mercadorias
SET valor_unitario = 94.90
WHERE cod_mercadoria = 102;

-- Atualização de nome do cliente
UPDATE vendas
SET nome_cliente = 'José R. Lima'
WHERE cod_pedido = 5002;

-- Exclusão de um pedido
DELETE FROM vendas
WHERE cod_pedido = 5003;

-- Consulta: produtos com estoque abaixo de 30
SELECT * FROM mercadorias
WHERE qtd_estoque < 30;

-- Consulta: vendas com produtos da categoria "Sementes"
SELECT v.*
FROM vendas v
JOIN mercadorias m ON v.cod_mercadoria = m.cod_mercadoria
WHERE m.categoria_item = 'Sementes';
