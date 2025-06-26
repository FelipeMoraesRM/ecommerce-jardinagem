-- Tabela de mercadorias disponíveis para venda
CREATE TABLE mercadorias (
    cod_mercadoria INT PRIMARY KEY,
    produto VARCHAR(100) NOT NULL,
    valor_unitario DECIMAL(8,2) NOT NULL,
    qtd_estoque INT NOT NULL,
    categoria_item VARCHAR(50)
);

-- Inserindo itens no sistema
INSERT INTO mercadorias (cod_mercadoria, produto, valor_unitario, qtd_estoque, categoria_item) VALUES
(101, 'Sementes de Manjericão', 12.90, 100, 'Sementes'),
(102, 'Pá para Jardinagem Premium', 58.00, 20, 'Ferramentas'),
(103, 'Vaso de Cerâmica 25cm', 34.50, 50, 'Vasos');

-- Tabela de vendas realizadas
CREATE TABLE vendas (
    cod_pedido INT PRIMARY KEY,
    data_venda DATE NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    cod_mercadoria INT NOT NULL,
    qtd_comprada INT NOT NULL CHECK (qtd_comprada > 0),
    FOREIGN KEY (cod_mercadoria) REFERENCES mercadorias(cod_mercadoria)
);

-- Registrando pedidos de clientes
INSERT INTO vendas (cod_pedido, data_venda, nome_cliente, cod_mercadoria, qtd_comprada) VALUES
(5001, '2025-06-25', 'Lucas Ramos', 101, 3),
(5002, '2025-06-26', 'Ana Hortência', 103, 2),
(5003, '2025-06-26', 'Ricardo Oliveira', 102, 1);
