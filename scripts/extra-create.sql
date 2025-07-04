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
