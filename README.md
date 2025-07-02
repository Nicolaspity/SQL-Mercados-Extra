# 📊 Banco de Dados - Supermercado Extra

---

## 📃 Descrição

Este projeto tem como objetivo a modelagem e implementação de um banco de dados para um supermercado online. É planejado para ser desenvolvido em até 12 horas. O sistema inclui:

- Criação do banco de dados
- Definição de tabelas com chaves primárias e estrangeiras
- Relacionamentos entre tabelas
- Inserção de dados
- Consultas SQL para extração de informações relevantes

---

## 📋 Estrutura do Projeto

- `scripts/` — Scripts SQL para criação e população do banco
- `consultas/` — Scripts com as principais consultas realizadas no banco
- `diagramas/` — Diagramas do modelo entidade-relacionamento (ER)

---

## 🔁 Modelo Entidade-Relacionamento (ER)

O banco de dados contempla as seguintes **entidades e atributos**:

### 🧾 Cliente
- `cliente_id` (PK)
- `primeiro_nome`
- `segundo_nome`
- `email`
- `endereco`

---

### 🛒 Compra
- `compra_id` (PK)
- `data_compra`
- `forma_pagamento`
- `produto_id` (FK)
- `cliente_id` (FK)

---

### 📦 Produto
- `produto_id` (PK)
- `nome_produto`
- `inventario`

---

### 🗂️ Categoria_Produto
- `categoria_produto_id` (PK)
- `categoria_produto`
- `produto_id` (FK)

---

### 🔗 Relacionamentos

- Um cliente pode fazer **muitas compras**
- Muitas compras pertencem a **um cliente**
- Uma compra pode incluir **vários produtos**
- Muitos produtos podem estar em **uma compra**
- Cada produto está **em uma categoria**
- Uma categoria pode ter **muitos produtos**

---

## 🔎 Exemplos de Consultas

Algumas consultas planejadas para este projeto:

- Listar todas as compras de um cliente específico
- Consultar o total vendido por produto
- Verificar o estoque de produtos abaixo do mínimo
- Gerar relatório de vendas por categoria

---

## ⚙️ Como Executar

1. Clone o repositório:
    ```bash
    git clone https://github.com/Nicolaspity/supermercado-extra-bd.git
    ```

2. Importe os scripts SQL no seu gerenciador de banco de dados (MySQL, PostgreSQL, SQLite, etc.)

3. Rode os scripts de criação e população do banco

4. Execute as consultas desejadas

---

> Projeto acadêmico com fins didáticos: simula um banco de dados completo para um supermercado online.
