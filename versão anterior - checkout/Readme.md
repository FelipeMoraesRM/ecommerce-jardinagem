# 🌿 E-commerce de Jardinagem – Modelagem de Banco de Dados

Este projeto foi desenvolvido como parte de uma atividade prática do módulo de **modelagem e manipulação de bancos de dados com controle de versão**. A proposta foi criar a estrutura de dados de um pequeno comércio — neste caso, um **e-commerce especializado em jardinagem**.

## 📌 Objetivo

O objetivo principal é demonstrar o domínio dos seguintes tópicos:

- Modelagem de banco de dados relacional com duas tabelas
- Definição adequada de atributos e tipos de dados
- Uso de comandos SQL para criação e inserção de registros
- Versionamento do projeto utilizando Git e GitHub

---

## 🗂️ Estrutura do Banco de Dados

O banco de dados é composto por **duas tabelas relacionais**:

### 📦 `mercadorias`
Armazena os produtos vendidos pela loja.

| Campo             | Tipo        | Descrição                                 |
|------------------|-------------|-------------------------------------------|
| `cod_mercadoria` | INT (PK)    | Código único do item                      |
| `produto`        | VARCHAR(100)| Nome do produto                           |
| `valor_unitario` | DECIMAL(8,2)| Preço por unidade                         |
| `qtd_estoque`    | INT         | Quantidade disponível                     |
| `categoria_item` | VARCHAR(50) | Categoria (sementes, ferramentas, vasos…) |

### 🧾 `vendas`
Registra os pedidos realizados pelos clientes.

| Campo             | Tipo         | Descrição                                           |
|------------------|--------------|-----------------------------------------------------|
| `cod_pedido`     | INT (PK)     | Código do pedido                                    |
| `data_venda`     | DATE         | Data em que a venda foi realizada                   |
| `nome_cliente`   | VARCHAR(100) | Nome do comprador                                   |
| `cod_mercadoria` | INT (FK)     | Produto comprado, relacionado à tabela `mercadorias`|
| `qtd_comprada`   | INT          | Quantidade adquirida                                |

---

## 🧾 Script SQL

O arquivo `ecommerce_jardinagem.sql` contém:

- Criação das tabelas `mercadorias` e `vendas`
- Inserção de três registros em cada tabela
- Chaves primárias e estrangeiras
- Validação de dados com `CHECK`

---

## 🔁 Versionamento com Git

O projeto foi versionado com Git e enviado para o GitHub com:

- Inicialização do repositório com `git init`
- Commit com mensagem descritiva
- Push para repositório remoto público

### ✅ Commit usado:
```
Modelagem do banco de dados: criação das tabelas mercadorias e vendas
```

---

## 🔗 Repositório

Acesse o repositório completo com o código SQL neste link:

👉 https://github.com/FelipeMoraesRM/ecommerce-jardinagem

---

## 👨‍🎓 Atividade acadêmica

Este projeto foi entregue como requisito da atividade avaliativa do módulo de bancos de dados e controle de versão, e está em conformidade com as instruções propostas.
