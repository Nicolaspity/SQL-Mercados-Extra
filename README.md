# 🏦 Banco de Dados - Supermercado Extra

Projeto criado por [@Nicolaspity](https://github.com/Nicolaspity)

## 📃 Descrição
Este projeto tem como objetivo a modelagem e implementação de um banco de dados para um supermercado fictício: o **Supermercado Extra**. O sistema inclui:

- Criação do banco de dados
- Definição de tabelas com chaves primárias e estrangeiras
- Relacionamentos entre tabelas
- Inserção de dados
- Consultas SQL para extração de informações relevantes

## 📆 Estrutura do Projeto

- `scripts/` - Contém os scripts SQL para criação e população do banco
- `consultas/` - Scripts com as principais consultas feitas no banco
- `diagramas/` - Diagramas do modelo entidade-relacionamento (MER)

## 🔄 Modelo Entidade-Relacionamento (MER)
O banco de dados contempla as seguintes entidades:

- **Clientes**
- **Produtos**
- **Funcionários**
- **Vendas**
- **Itens da Venda**
- **Fornecedores**
- **Categorias de Produtos**

E os seguintes relacionamentos:

- Um cliente pode fazer várias vendas
- Cada venda possui múltiplos produtos
- Cada produto pertence a uma categoria e é fornecido por um fornecedor

## 📈 Exemplos de Consultas

Algumas consultas já implementadas:

- Total de vendas por mês
- Produtos mais vendidos
- Clientes que mais compraram
- Receita total por categoria de produto

## ⚙️ Como Executar

1. Clone o repositório:
```bash
git clone https://github.com/Nicolaspity/supermercado-extra-bd.git
