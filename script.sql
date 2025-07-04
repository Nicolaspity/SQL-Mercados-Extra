SELECT primeiro_nome, ultimo_nome, email
FROM cliente;

-- Consulta que você quer executar
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