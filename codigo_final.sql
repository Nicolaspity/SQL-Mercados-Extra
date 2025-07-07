CREATE TABLE cliente (
    cliente_id SERIAL PRIMARY KEY,
    primeiro_nome VARCHAR(80),
    ultimo_nome VARCHAR(80),
    email VARCHAR(50),
    endereco TEXT
);

CREATE TABLE categoria (
    categoria_id SERIAL PRIMARY KEY,
    categoria VARCHAR(50)
);

CREATE TABLE produto (
    produto_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    inventario INT,
    categoria_id INT,
    preco MONEY,
    avaliacao DECIMAL(2,1),
    marca VARCHAR(50),
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
('Livros'),
('Acessórios e Inovações'),
('Beleza e Saúde'),
('Casa e Construção'),
('Marketplace'),
('Brinquedos'),
('Moda'),
('Papelaria'),
('Máquinas Agrícolas'),
('Ferramentas Manuais'),
('Ferramentas Elétricas'),
('Equipamentos de Proteção'),
('Materiais Elétricos'),
('Hidráulica'),
('Construção Pesada'),
('Insumos Agrícolas'),
('Peças e Acessórios Industriais');

-- PRODUTOS
-- LIVROS (1)
INSERT INTO produto (nome, inventario, categoria_id, preco, avaliacao, marca) VALUES
('Dom Casmurro', 50, 1, 29.90, 4.7, 'Record'),
('O Pequeno Príncipe', 40, 1, 19.90, 4.8, 'HarperCollins'),
('Sapiens', 30, 1, 49.90, 4.9, 'Companhia das Letras'),
('Código Limpo', 20, 1, 59.90, 4.8, 'Alta Books'),
('Harry Potter e a Pedra Filosofal', 35, 1, 39.90, 4.9, 'Rocco'),

-- ACESSÓRIOS E INOVAÇÕES (2)
('Fone Bluetooth JBL', 60, 2, 129.90, 4.7, 'JBL'),
('Smartwatch Xiaomi', 50, 2, 299.90, 4.6, 'Xiaomi'),
('Power Bank Samsung 10000mAh', 80, 2, 79.90, 4.8, 'Samsung'),
('Suporte Veicular Magnético', 100, 2, 29.90, 4.5, 'Baseus'),
('Adaptador USB-C para HDMI', 70, 2, 49.90, 4.7, 'UGREEN'),

-- BELEZA E SAÚDE (3)
('Shampoo Pantene 400ml', 90, 3, 19.90, 4.8, 'Pantene'),
('Hidratante Nivea Soft 100ml', 85, 3, 16.90, 4.7, 'Nivea'),
('Perfume Natura Homem 100ml', 40, 3, 129.90, 4.9, 'Natura'),
('Protetor Solar Sundown 200ml', 50, 3, 49.90, 4.8, 'Johnson'),
('Escova Dental Oral-B', 120, 3, 7.90, 4.6, 'Oral-B'),

-- CASA E CONSTRUÇÃO (4)
('Interruptor Tramontina', 100, 4, 8.90, 4.7, 'Tramontina'),
('Lâmpada LED 9W Philips', 150, 4, 12.90, 4.8, 'Philips'),
('Chuveiro Advanced', 60, 4, 119.90, 4.6, 'Lorenzetti'),
('Tomada 10A Pial', 140, 4, 9.90, 4.7, 'Legrand'),
('Fita Isolante 19mm', 200, 4, 4.90, 4.6, '3M'),

-- MARKETPLACE (5)
('Caixa Surpresa', 300, 5, 49.90, 4.5, 'Genérico'),
('Combo Presentes', 150, 5, 89.90, 4.6, 'Marketplace'),
('Kit Utilidades', 100, 5, 59.90, 4.7, 'Marketplace'),
('Vale Compras R$50', 500, 5, 50.00, 5.0, 'Marketplace'),
('Vale Compras R$100', 400, 5, 100.00, 5.0, 'Marketplace'),

-- BRINQUEDOS (6)
('Boneca Barbie', 80, 6, 69.90, 4.9, 'Mattel'),
('Carrinho Hot Wheels', 120, 6, 14.90, 4.8, 'Mattel'),
('Jogo Imagem & Ação', 60, 6, 59.90, 4.7, 'Grow'),
('Quebra-Cabeça 500 peças', 90, 6, 29.90, 4.8, 'Toyster'),
('Pelúcia Unicórnio', 70, 6, 39.90, 4.9, 'Buba'),

-- MODA (7)
('Camiseta Algodão Masculina', 110, 7, 29.90, 4.8, 'Hering'),
('Calça Jeans Feminina', 80, 7, 99.90, 4.7, 'Damyller'),
('Vestido Estampado', 75, 7, 79.90, 4.6, 'Marisa'),
('Tênis Esportivo Masculino', 65, 7, 149.90, 4.8, 'Adidas'),
('Blusa Manga Longa Feminina', 95, 7, 49.90, 4.7, 'C&A'),

-- PAPELARIA (8)
('Caderno 10 matérias', 140, 8, 24.90, 4.8, 'Tilibra'),
('Caneta Esferográfica Azul', 200, 8, 1.49, 4.7, 'BIC'),
('Lápis de Cor 24 cores', 90, 8, 14.90, 4.9, 'Faber-Castell'),
('Borracha Branca', 220, 8, 0.99, 4.8, 'Mercur'),
('Agenda 2025', 80, 8, 19.90, 4.6, 'Spiral'),

-- MÁQUINAS AGRÍCOLAS (9)
('Mini Trator Brinquedo', 60, 9, 49.90, 4.7, 'Brinquedo'),
('Trator Massey Ferguson 290', 5, 9, 159990.00, 4.9, 'Massey Ferguson'),
('Pulverizador Costal 20L', 30, 9, 399.90, 4.7, 'Jacto'),
('Arado Agricola', 10, 9, 2999.90, 4.6, 'Tatu Marchesan'),
('Plantadeira 5 Linhas', 7, 9, 49999.90, 4.8, 'John Deere'),

-- FERRAMENTAS MANUAIS (10)
('Chave de Fenda 5mm', 150, 10, 9.90, 4.8, 'Tramontina'),
('Alicate Universal 8"', 140, 10, 24.90, 4.8, 'Vonder'),
('Martelo Cabo Madeira', 100, 10, 19.90, 4.7, 'Tramontina'),
('Serrote 20"', 80, 10, 29.90, 4.7, 'Stanley'),
('Conjunto Chaves Allen', 120, 10, 19.90, 4.6, 'Irwin'),

-- FERRAMENTAS ELÉTRICAS (11)
('Furadeira 500W', 50, 11, 149.90, 4.8, 'Bosch'),
('Parafusadeira 12V', 40, 11, 199.90, 4.7, 'Makita'),
('Lixadeira Orbital', 35, 11, 229.90, 4.7, 'Black&Decker'),
('Serra Tico-Tico 400W', 45, 11, 189.90, 4.8, 'Skil'),
('Esmerilhadeira 700W', 30, 11, 249.90, 4.8, 'Dewalt'),

-- EQUIPAMENTOS DE PROTEÇÃO (12)
('Capacete de Segurança', 80, 12, 39.90, 4.7, '3M'),
('Luva Nitrílica', 150, 12, 5.90, 4.8, 'Ansell'),
('Óculos de Proteção Incolor', 120, 12, 9.90, 4.7, 'Kalipso'),
('Protetor Auricular', 200, 12, 1.99, 4.8, '3M'),
('Avental PVC', 100, 12, 24.90, 4.6, 'Danny'),

-- MATERIAIS ELÉTRICOS (13)
('Disjuntor 20A', 140, 13, 12.90, 4.8, 'Siemens'),
('Tomada Dupla 10A', 150, 13, 9.90, 4.7, 'Pial Legrand'),
('Fio Flexível 2,5mm 10m', 130, 13, 29.90, 4.8, 'Corfio'),
('Caixa de Luz 4x2', 200, 13, 2.90, 4.7, 'Tigre'),
('Interruptor Paralelo', 180, 13, 8.90, 4.8, 'Schneider'),

-- HIDRÁULICA (14)
('Joelho PVC 25mm', 150, 14, 1.90, 4.8, 'Tigre'),
('Registro Esfera 1/2"', 100, 14, 14.90, 4.7, 'Fortlev'),
('Torneira Plástica', 80, 14, 9.90, 4.6, 'Fortlev'),
('Curva 90° 40mm', 120, 14, 3.90, 4.7, 'Tigre'),
('Redução PVC 50x40mm', 90, 14, 2.90, 4.8, 'Tigre'),

-- CONSTRUÇÃO PESADA (15)
('Betoneira 400L', 5, 15, 4999.90, 4.9, 'Menegotti'),
('Compactador de Solo', 3, 15, 7999.90, 4.8, 'Rammer'),
('Andaime Tubular', 15, 15, 299.90, 4.7, 'Belgo'),
('Guincho de Coluna 200Kg', 10, 15, 1899.90, 4.8, 'Schulz'),
('Serra Circular 220V', 20, 15, 499.90, 4.7, 'Makita'),

-- INSUMOS AGRÍCOLAS (16)
('Semente de Milho 500g', 100, 16, 19.90, 4.8, 'Agrosem'),
('Adubo NPK 10kg', 80, 16, 59.90, 4.7, 'Yara'),
('Herbicida Sistêmico 1L', 50, 16, 89.90, 4.7, 'Bayer'),
('Inseticida Agrícola 500ml', 60, 16, 69.90, 4.8, 'Syngenta'),
('Fertilizante Foliar 1L', 70, 16, 29.90, 4.7, 'Basf'),

-- PEÇAS E ACESSÓRIOS INDUSTRIAIS (17)
('Rolamento 6203', 100, 17, 9.90, 4.8, 'SKF'),
('Corrente ASA 50', 80, 17, 59.90, 4.7, 'Wippermann'),
('Polia de Alumínio 2 canais', 40, 17, 29.90, 4.8, 'Vonder'),
('Acoplamento Elástico', 50, 17, 49.90, 4.7, 'Schneider'),
('Válvula Esfera Inox 1"', 30, 17, 89.90, 4.8, 'Tigre');

-- CLIENTES
INSERT INTO cliente (primeiro_nome, ultimo_nome, email, endereco) VALUES
('Rodrigo', 'Silva', 'rodrigo.silva@email.com', 'Rua Um, 100 - SP'),
('Luciana', 'Ferreira', 'luciana.ferreira@email.com', 'Av. Dois, 200 - RJ'),
('Ricardo', 'Almeida', 'ricardo.almeida@email.com', 'Rua Três, 300 - MG'),
('Aline', 'Santos', 'aline.santos@email.com', 'Av. Quatro, 400 - PR'),
('Marcelo', 'Oliveira', 'marcelo.oliveira@email.com', 'Rua Cinco, 500 - RS'),
('Daniela', 'Lima', 'daniela.lima@email.com', 'Av. Seis, 600 - BA'),
('Henrique', 'Costa', 'henrique.costa@email.com', 'Rua Sete, 700 - SC'),
('Fernanda', 'Martins', 'fernanda.martins@email.com', 'Av. Oito, 800 - PE'),
('Leandro', 'Rocha', 'leandro.rocha@email.com', 'Rua Nove, 900 - GO'),
('Priscila', 'Barbosa', 'priscila.barbosa@email.com', 'Av. Dez, 1000 - MA'),
('Jonathan', 'Nunes', 'jonathan.nunes@email.com', 'Rua Onze, 1100 - AL'),
('Juliane', 'Pereira', 'juliane.pereira@email.com', 'Av. Doze, 1200 - SE'),
('Felipe', 'Cardoso', 'felipe.cardoso@email.com', 'Rua Treze, 1300 - PI'),
('Cintia', 'Ramos', 'cintia.ramos@email.com', 'Av. Quatorze, 1400 - CE'),
('Renato', 'Moura', 'renato.moura@email.com', 'Rua Quinze, 1500 - RN'),
('Tatiana', 'Vieira', 'tatiana.vieira@email.com', 'Av. Dezesseis, 1600 - TO'),
('Bruno', 'Souza', 'bruno.souza2@email.com', 'Rua Dezessete, 1700 - DF'),
('Bianca', 'Gonçalves', 'bianca.goncalves@email.com', 'Av. Dezoito, 1800 - ES'),
('Diego', 'Castro', 'diego.castro2@email.com', 'Rua Dezenove, 1900 - AC'),
('Flavia', 'Rodrigues', 'flavia.rodrigues@email.com', 'Av. Vinte, 2000 - RO'),
('Raquel', 'Fernandes', 'raquel.fernandes@email.com', 'Rua 21 - SP'),
('Cristiano', 'Medeiros', 'cristiano.medeiros@email.com', 'Av. 22 - RJ'),
('Luiz', 'Batista', 'luiz.batista@email.com', 'Rua 23 - MG'),
('Monique', 'Lopes', 'monique.lopes@email.com', 'Av. 24 - PR'),
('Alessandro', 'Teixeira', 'alessandro.teixeira@email.com', 'Rua 25 - RS'),
('Carla', 'Dias', 'carla.dias@email.com', 'Av. 26 - BA'),
('Vitor', 'Freitas', 'vitor.freitas@email.com', 'Rua 27 - SC'),
('Patricia', 'Carvalho', 'patricia.carvalho2@email.com', 'Av. 28 - PE'),
('Gustavo', 'Cunha', 'gustavo.cunha@email.com', 'Rua 29 - GO'),
('Sabrina', 'Farias', 'sabrina.farias@email.com', 'Av. 30 - MA'),
('Eduarda', 'Rezende', 'eduarda.rezende@email.com', 'Rua 31 - AL'),
('Adriano', 'Sales', 'adriano.sales@email.com', 'Av. 32 - SE'),
('Paula', 'Barros', 'paula.barros@email.com', 'Rua 33 - PI'),
('Vinicius', 'Azevedo', 'vinicius.azevedo@email.com', 'Av. 34 - CE'),
('Cristina', 'Ferreira', 'cristina.ferreira@email.com', 'Rua 35 - RN'),
('Rafael', 'Guedes', 'rafael.guedes@email.com', 'Av. 36 - TO'),
('Jéssica', 'Moraes', 'jessica.moraes@email.com', 'Rua 37 - DF'),
('Matheus', 'Pinto', 'matheus.pinto@email.com', 'Av. 38 - ES'),
('Karina', 'Barbosa', 'karina.barbosa@email.com', 'Rua 39 - AC'),
('Igor', 'Souza', 'igor.souza@email.com', 'Av. 40 - RO');
('Amanda', 'Pereira', 'amanda.pereira@email.com', 'Rua 42 - SP'),
('Eduardo', 'Vieira', 'eduardo.vieira@email.com', 'Av. 43 - RJ'),
('Larissa', 'Silva', 'larissa.silva@email.com', 'Rua 44 - MG'),
('Murilo', 'Oliveira', 'murilo.oliveira@email.com', 'Av. 45 - PR'),
('Camila', 'Almeida', 'camila.almeida@email.com', 'Rua 46 - RS'),
('Pedro', 'Ferraz', 'pedro.ferraz@email.com', 'Av. 47 - BA'),
('Vanessa', 'Moura', 'vanessa.moura@email.com', 'Rua 48 - SC'),
('Thiago', 'Rocha', 'thiago.rocha@email.com', 'Av. 49 - PE'),
('Letícia', 'Santos', 'leticia.santos@email.com', 'Rua 50 - GO'),
('André', 'Martins', 'andre.martins@email.com', 'Av. 51 - MA'),
('Juliana', 'Ribeiro', 'juliana.ribeiro@email.com', 'Rua 52 - AL'),
('Guilherme', 'Costa', 'guilherme.costa@email.com', 'Av. 53 - SE'),
('Renata', 'Lima', 'renata.lima@email.com', 'Rua 54 - PI'),
('Fernando', 'Souza', 'fernando.souza@email.com', 'Av. 55 - CE'),
('Mariana', 'Rodrigues', 'mariana.rodrigues@email.com', 'Rua 56 - RN'),
('Alexandre', 'Carvalho', 'alexandre.carvalho@email.com', 'Av. 57 - TO'),
('Débora', 'Batista', 'debora.batista@email.com', 'Rua 58 - DF'),
('Leonardo', 'Cardoso', 'leonardo.cardoso@email.com', 'Av. 59 - ES'),
('Eliane', 'Barbosa', 'eliane.barbosa@email.com', 'Rua 60 - AC'),
('Marcela', 'Nunes', 'marcela.nunes@email.com', 'Av. 61 - RO'),
('Caio', 'Rezende', 'caio.rezende@email.com', 'Rua 62 - SP'),
('Ariana', 'Castro', 'ariana.castro@email.com', 'Av. 63 - RJ'),
('Márcio', 'Freitas', 'marcio.freitas@email.com', 'Rua 64 - MG'),
('Isabela', 'Teixeira', 'isabela.teixeira@email.com', 'Av. 65 - PR'),
('Cláudio', 'Dias', 'claudio.dias@email.com', 'Rua 66 - RS'),
('Fabiana', 'Ramos', 'fabiana.ramos@email.com', 'Av. 67 - BA'),
('Raphael', 'Gonçalves', 'raphael.goncalves@email.com', 'Rua 68 - SC'),
('Valéria', 'Medeiros', 'valeria.medeiros@email.com', 'Av. 69 - PE'),
('Emerson', 'Azevedo', 'emerson.azevedo@email.com', 'Rua 70 - GO');

-- COMPRAS
INSERT INTO compra (data_compra, forma_pagamento, cliente_id) VALUES
('2025-07-08', 'PIX', 21),
('2025-07-08', 'Cartão', 22),
('2025-07-08', 'Dinheiro', 23),
('2025-07-09', 'PIX', 24),
('2025-07-09', 'Cartão', 25),
('2025-07-09', 'Dinheiro', 26),
('2025-07-10', 'PIX', 27),
('2025-07-10', 'Cartão', 28),
('2025-07-10', 'Dinheiro', 29),
('2025-07-11', 'PIX', 30),
('2025-07-11', 'Cartão', 31),
('2025-07-11', 'Dinheiro', 32),
('2025-07-12', 'PIX', 33),
('2025-07-12', 'Cartão', 34),
('2025-07-12', 'Dinheiro', 35),
('2025-07-13', 'PIX', 36),
('2025-07-13', 'Cartão', 37),
('2025-07-13', 'Dinheiro', 38),
('2025-07-14', 'PIX', 39),
('2025-07-14', 'Cartão', 40),
('2025-07-14', 'Dinheiro', 41),
('2025-07-15', 'PIX', 42),
('2025-07-15', 'Cartão', 43),
('2025-07-15', 'Dinheiro', 44),
('2025-07-16', 'PIX', 45),
('2025-07-16', 'Cartão', 46),
('2025-07-16', 'Dinheiro', 47),
('2025-07-17', 'PIX', 48),
('2025-07-17', 'Cartão', 49),
('2025-07-17', 'Dinheiro', 50),
('2025-07-18', 'PIX', 51),
('2025-07-18', 'Cartão', 52),
('2025-07-18', 'Dinheiro', 53),
('2025-07-19', 'PIX', 54),
('2025-07-19', 'Cartão', 55),
('2025-07-19', 'Dinheiro', 56),
('2025-07-20', 'PIX', 57),
('2025-07-20', 'Cartão', 58),
('2025-07-20', 'Dinheiro', 59),
('2025-07-21', 'PIX', 60),
('2025-07-21', 'Cartão', 61),
('2025-07-21', 'Dinheiro', 62),
('2025-07-22', 'PIX', 63),
('2025-07-22', 'Cartão', 64),
('2025-07-22', 'Dinheiro', 65),
('2025-07-23', 'PIX', 66),
('2025-07-23', 'Cartão', 67),
('2025-07-23', 'Dinheiro', 68),
('2025-07-24', 'PIX', 69),
('2025-07-24', 'Cartão', 70);


-- Compra dos produtos
INSERT INTO compra_produto (compra_id, produto_id, quantidade) VALUES
(21, 5, 2), (21, 25, 1),
(22, 42, 3), (22, 13, 2),
(23, 77, 1), (23, 60, 2),
(24, 8, 1), (24, 15, 1),
(25, 38, 2), (25, 55, 1),
(26, 72, 3),
(27, 18, 2), (27, 44, 2),
(28, 30, 1), (28, 61, 1),
(29, 19, 2), (29, 70, 2),
(30, 9, 1), (30, 49, 1),
(31, 35, 3),
(32, 12, 2), (32, 47, 1),
(33, 58, 2), (33, 65, 1),
(34, 17, 2), (34, 53, 1),
(35, 21, 3),
(36, 7, 1), (36, 34, 2),
(37, 40, 2), (37, 68, 1),
(38, 14, 2), (38, 62, 1),
(39, 26, 3),
(40, 11, 2), (40, 36, 1),
(41, 56, 2), (41, 75, 1),
(42, 23, 2), (42, 67, 1),
(43, 16, 3),
(44, 4, 2), (44, 28, 2),
(45, 31, 1), (45, 54, 1),
(46, 20, 2), (46, 59, 2),
(47, 10, 1), (47, 43, 1),
(48, 37, 3),
(49, 6, 2), (49, 29, 1),
(50, 57, 2), (50, 74, 1),
(51, 24, 2), (51, 66, 1),
(52, 22, 3), (52, 50, 1),
(53, 13, 2), (53, 46, 1),
(54, 32, 2), (54, 64, 1),
(55, 27, 3), (55, 48, 2),
(56, 19, 1), (56, 41, 1),
(57, 58, 2), (57, 73, 1),
(58, 15, 2), (58, 63, 1),
(59, 25, 3), (59, 39, 2),
(60, 18, 1), (60, 45, 1),
(61, 53, 2), (61, 69, 1),
(62, 12, 2), (62, 35, 1),
(63, 40, 2), (63, 71, 1),
(64, 14, 3), (64, 60, 2),
(65, 9, 1), (65, 42, 1),
(66, 36, 2), (66, 55, 1),
(67, 17, 2), (67, 61, 1),
(68, 21, 3), (68, 65, 2),
(69, 7, 1), (69, 44, 1),
(70, 30, 2), (70, 57, 1);

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

--consulta do preço do shampoo pantene 400ml
SELECT preco
FROM produto
WHERE nome = 'Shampoo Pantene 400ml';

--consulta dos produtos abaixo de 10 reais
SELECT produto.nome, produto.preco
FROM produto
INNER JOIN categoria
ON produto.categoria_id = categoria.categoria_id
WHERE produto.preco < 10.00;

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
