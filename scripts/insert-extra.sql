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
