CREATE TABLE cliente (
    cliente_id SERIAL PRIMARY KEY,
    primeiro_nome VARCHAR(80),
    ultimo_nome VARCHAR(80),
    email VARCHAR(50),
    endereco TEXT
);

CREATE TABLE categoria (
    categoria_id SERIAL PRIMARY KEY,
    categoria VARCHAR(30)
);

CREATE TABLE produto (
    produto_id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    inventario INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(categoria_id)
);

CREATE TABLE compra (
    compra_id SERIAL PRIMARY KEY,
    data_compra DATE,
    forma_pagamento VARCHAR(10),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id)
);

CREATE TABLE compra_produto (
	compra_produto serial primary key,
    compra_id INT,
    produto_id INT,
    quantidade INT,
    FOREIGN KEY (compra_id) REFERENCES compra(compra_id),
    FOREIGN KEY (produto_id) REFERENCES produto(produto_id)
);

-- CATEGORIAS
INSERT INTO categoria (categoria) VALUES
('Bebidas'),
('Frios'),
('Hortifruti'),
('Higiene'),
('Limpeza'),
('Mercearia'),
('Padaria'),
('Congelados'),
('Pet Shop'),
('Bazar');

-- PRODUTOS
INSERT INTO produto (nome, inventario, categoria_id) VALUES
('Coca-Cola 2L', 120, 1),
('Pepsi 2L', 80, 1),
('Suco Del Valle 1L', 60, 1),
('Água Crystal 500ml', 200, 1),
('Cerveja Skol Lata 350ml', 300, 1),
('Queijo Mussarela 500g', 45, 2),
('Presunto Sadia 200g', 60, 2),
('Mortadela Perdigão 500g', 30, 2),
('Banana Prata - Kg', 100, 3),
('Tomate Italiano - Kg', 90, 3),
('Alface Crespa', 75, 3),
('Cenoura - Kg', 50, 3),
('Sabonete Dove 90g', 200, 4),
('Shampoo Seda 350ml', 150, 4),
('Pasta de Dente Colgate', 180, 4),
('Detergente Ypê 500ml', 300, 5),
('Desinfetante Veja 500ml', 180, 5),
('Sabão em Pó Omo 1Kg', 100, 5),
('Arroz Camil 5Kg', 90, 6),
('Feijão Carioca 1Kg', 110, 6),
('Macarrão Renata 500g', 85, 6),
('Açúcar União 1Kg', 130, 6),
('Café Pilão 500g', 95, 6),
('Pão Francês - Kg', 60, 7),
('Bolo de Cenoura Fatiado', 40, 7),
('Pizza Seara Calabresa', 55, 8),
('Lasanha Sadia 600g', 45, 8),
('Ração Golden Gatos 1Kg', 35, 9),
('Areia Pipicat 4Kg', 20, 9),
('Pano de Prato', 80, 10),
('Vassoura Noviça', 60, 10);

select * from produto;

-- CLIENTES
INSERT INTO cliente (primeiro_nome, ultimo_nome, email, endereco) VALUES
('Carlos', 'Silva', 'carlos.silva@email.com', 'Rua das Flores, 123 - SP'),
('Juliana', 'Souza', 'juliana.souza@email.com', 'Av. Paulista, 900 - SP'),
('Marcos', 'Lima', 'marcos.lima@email.com', 'Rua Central, 45 - RJ'),
('Ana', 'Ferreira', 'ana.ferreira@email.com', 'Rua da Praia, 321 - RJ'),
('Paulo', 'Almeida', 'paulo.almeida@email.com', 'Rua Esperança, 777 - MG'),
('Luciana', 'Rocha', 'luciana.rocha@email.com', 'Rua do Sol, 12 - BA'),
('Rafael', 'Martins', 'rafael.martins@email.com', 'Rua Amazonas, 99 - AM'),
('Bruna', 'Teixeira', 'bruna.teixeira@email.com', 'Av. Atlântica, 34 - SC'),
('Diego', 'Castro', 'diego.castro@email.com', 'Rua Interior, 55 - RS'),
('Fernanda', 'Dias', 'fernanda.dias@email.com', 'Rua das Oliveiras, 22 - PR'),
('José', 'Ribeiro', 'jose.ribeiro@email.com', 'Rua São João, 10 - GO'),
('Amanda', 'Barbosa', 'amanda.barbosa@email.com', 'Rua Vitória, 88 - PE'),
('Gabriel', 'Nunes', 'gabriel.nunes@email.com', 'Rua Esperança, 104 - MA'),
('Renata', 'Cavalcante', 'renata.cav@email.com', 'Rua Tietê, 15 - RJ'),
('Eduardo', 'Santos', 'edu.santos@email.com', 'Rua Verde, 312 - SP');

-- COMPRAS
INSERT INTO compra (data_compra, forma_pagamento, cliente_id) VALUES
('2025-07-01', 'Cartão', 1),
('2025-07-01', 'Dinheiro', 2),
('2025-07-02', 'PIX', 3),
('2025-07-02', 'Cartão', 1),
('2025-07-03', 'Dinheiro', 4),
('2025-07-03', 'PIX', 2),
('2025-07-03', 'Cartão', 3),
('2025-07-04', 'Cartão', 5),
('2025-07-04', 'PIX', 6),
('2025-07-04', 'Dinheiro', 7);

-- PRODUTOS DAS COMPRAS
INSERT INTO compra_produto (compra_id, produto_id, quantidade) VALUES
(1, 1, 2),
(1, 20, 1),
(2, 5, 12),
(3, 10, 2),
(3, 11, 1),
(4, 6, 1),
(4, 7, 1),
(5, 14, 2),
(6, 2, 1),
(6, 22, 1),
(7, 3, 3),
(7, 4, 3),
(8, 26, 2),
(9, 30, 1),
(10, 18, 4);

-- PEDRO RYAN

-- consulta dos clientes

SELECT primeiro_nome, ultimo_nome, email
FROM cliente;

-- Consulta da compra de cada clinte

SELECT
c.primeiro_nome,
co.data_compra,
p.nome AS nome_produto,
cp.quantidade
FROM cliente c
JOIN compra co ON c.cliente_id = co.cliente_id
JOIN compra_produto cp ON co.compra_id = cp.compra_id
JOIN produto p ON cp.produto_id = p.produto_id
WHERE co.data_compra BETWEEN '2024-01-01' AND '2025-12-31'
ORDER BY co.data_compra;




-- LUIS FILIPE

--consulta dos produtos do inventário e suas respectivas categorias categorias

select
	p.nome as "Nome do Produto",
	c.categoria as "Categoria"
from
	produto p
inner join categoria c on
	p.categoria_id = c.categoria_id;

-- consulta de quantas items na categoria existem
select
	count(*) as "Total de Bebidas"
from
	produto p
inner join categoria c on
	p.categoria_id = c.categoria_id
where
	c.categoria = 'Bebidas';


-- NICOLAS
-- Consulta de quantos clientes compraram o produto de id = 2 ?
select count(*) as "Quantidade de Clientes " from cliente c
inner join compra co on co.cliente_id = c.cliente_id 
inner join compra_produto cp on cp.compra_id = co.compra_id
inner join produto p on p.produto_id = cp.produto_id 
where p.produto_id = :id;

-- Consulta de quantos produtos diferentes existem no invenário
select count(inventario) from produto p;

--NICOLAS (FAZENDO TRABALHO DO IGOR QUE FALTOU)

-- Consulta de quais são os 5 produtos com maior quantidade no inventário

select
	*
from
	produto
order by
	inventario desc
limit 5;


-- Qual categoria foi a mais comprada
select c.categoria, count(*) as "vezes comprada" from categoria c
inner join produto p on p.categoria_id = c.categoria_id
inner join compra_produto cp on cp.produto_id = p.produto_id
group by c.categoria;

--MATHIAS

--Consultando quantos clientes que compraram panos de prato.

select 
	count(distinct cli.cliente_id) as Clientes_que_compraram_pano_de_prato
from 
	compra c
inner join cliente cli on
	c.cliente_id = cli.cliente_id
inner join compra_produto cp on
	c.compra_id = cp.compra_id
inner join produto p on
	p.produto_id = cp.produto_id
where p.nome = 'Pano de prato';

--Consultando qual o id do cliente chamado 'Rafael'.
select
	cli.cliente_id as id_do_rafael
from
	cliente cli
where lower(cli.primeiro_nome) = 'rafael';

--MATHIAS (fAZENDO TRABALHO DO TOLEDO QUE FALTOU)

--Consulta de todos os clientes que já fizeram ao menos uma compra.

SELECT 
    cli.primeiro_nome, 
    cli.ultimo_nome, 
    cli.email
FROM 
    cliente cli
INNER JOIN compra c ON 
    cli.cliente_id = c.cliente_id;
   
--Consulta do total de itens comprados por cada cliente em cada categoria e cada compra. 
   
SELECT 
    cli.cliente_id,
    cli.primeiro_nome,
    cat.categoria,
    SUM(cp.quantidade) AS total_itens
FROM 
    cliente cli
INNER JOIN compra c ON 
    cli.cliente_id = c.cliente_id
INNER JOIN compra_produto cp ON 
    c.compra_id = cp.compra_id
INNER JOIN produto p ON 
    cp.produto_id = p.produto_id
INNER JOIN categoria cat ON 
    p.categoria_id = cat.categoria_id
GROUP BY 
    cli.cliente_id, cli.primeiro_nome, cat.categoria
ORDER BY 
    cli.cliente_id, total_itens DESC;
