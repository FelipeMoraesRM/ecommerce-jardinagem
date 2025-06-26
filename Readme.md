# 🌿 E-commerce de Jardinagem – Avaliação do Módulo 3

Este repositório contém o desenvolvimento da atividade prática do **Módulo 3** da disciplina **Projeto Integrador II**, com foco em **modelagem e manipulação de banco de dados** e **uso de controle de versão com Git**. A aplicação simula um sistema para um e-commerce de jardinagem, incluindo a definição do esquema relacional, operações em SQL e versionamento do código-fonte.

## 📌 Objetivos

- Modelar e implementar um banco de dados relacional para gerenciar produtos e vendas.
- Realizar operações de inserção, atualização, remoção e consulta utilizando SQL.
- Versionar a evolução do projeto utilizando Git e GitHub.

---

## 🗂 Estrutura do Projeto

- `ecommerce_jardinagem.sql`: script SQL com toda a estrutura do banco (tabelas, inserções, atualizações, exclusões e consultas).
- `versão anterior - checkout/`: pasta com o conteúdo original do módulo anterior (para fins de histórico e comparação).

---

## 🧾 Banco de Dados

O banco de dados foi modelado com duas tabelas:

### 📦 `mercadorias`
Armazena os produtos disponíveis no sistema.

| Campo            | Tipo           | Descrição                   |
|------------------|----------------|-----------------------------|
| `cod_mercadoria` | INT (PK)       | Código do produto           |
| `produto`        | VARCHAR(100)   | Nome do item                |
| `valor_unitario` | DECIMAL(8,2)   | Preço por unidade           |
| `qtd_estoque`    | INT            | Quantidade em estoque       |
| `categoria_item` | VARCHAR(50)    | Categoria (sementes, etc.)  |

### 🧾 `vendas`
Registra os pedidos feitos pelos clientes.

| Campo           | Tipo           | Descrição                           |
|------------------|----------------|-------------------------------------|
| `cod_pedido`     | INT (PK)       | Código do pedido                    |
| `data_venda`     | DATE           | Data da compra                      |
| `nome_cliente`   | VARCHAR(100)   | Nome do comprador                   |
| `cod_mercadoria` | INT (FK)       | Produto comprado                    |
| `qtd_comprada`   | INT            | Quantidade adquirida                |

---

## 🔁 Versionamento com Git

As alterações no projeto foram controladas com Git. O repositório foi inicializado localmente, com commits frequentes e mensagens descritivas. O histórico pode ser acompanhado neste repositório público.

---

## 📎 Link para o Repositório

> https://github.com/FelipeMoraesRM/ecommerce-jardinagem

---

## 👨‍🎓 Informações Acadêmicas

**Disciplina:** Projeto Integrador II  
**Módulo:** 3 – Banco de Dados e Controle de Versão  
**Curso:** Tecnologia da Informação  
**Instituição:** Universidade Federal de Mato Grosso do Sul  
**Entrega:** Enviada via AVA em PDF com relatório completo e link do repositório.

---
