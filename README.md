# 📊 Banco de Dados - Supermercado Extra

--- 
## 📃 Descrição
Este projeto tem como objetivo a modelagem e implementação de um banco de dados para um supermercado online e tem duração máxima de 12 horas. O sistema inclui:

- Criação do banco de dados
- Definição de tabelas com chaves primárias e estrangeiras
- Relacionamentos entre tabelas
- Inserção de dados
- Consultas SQL para extração de informações relevantes

## 📋 Estrutura do Projeto

- `scripts/` - Contém os scripts SQL para criação e população do banco
- `consultas/` - Scripts com as principais consultas feitas no banco
- `diagramas/` - Diagramas do modelo entidade-relacionamento (ER)

## 🔁 Modelo Entidade-Relacionamento (ER)
O banco de dados contempla as seguintes entidades:



- **Cliente**
- Cliente_id
- Primeiro nome
- Segundo nome
- Email
- Endereço


  
- **Compra**
- Compra_id
- Data_compra
- Forma_pagamento
- Produto_id
- Cliente_id


  
- **Produto**
- Produto_id
- Nome_produto
- Inventário


  
- **Categoria_produto**
- Categoria_produto_id
- Categoria_produto
- Produto_id



E os seguintes relacionamentos:


- O cliente pode fazer muitas compras
- Muitas compras podem ser de um cliente
- Uma compra pode ter varios produtos
- Muitos produtos podem estar presentes em uma compra
- Cada produto está e presente em uma categoria
- Uma categoria pode ter muitos produtos

  ## 🔁 Tabelas

- **Clientes**
- Cliente_id
- Primeiro nome
- Segundo nome
- **Compra**
- 
- **Produtos**
- 
- **Categoria_produto**
- 


## 🔎 Exemplos de Consultas

Algumas consultas já implementadas:

- 
- 
- 
- 

## ⚙️ Como Executar

1. Clone o repositório:
```bash
git clone https://github.com/Nicolaspity/supermercado-extra-bd.git
