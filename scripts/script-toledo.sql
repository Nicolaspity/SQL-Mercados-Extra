--Consulta de todos os clientes que já fizeram ao menos uma compra.
SELECT 
    cli.primeiro_nome, 
    cli.ultimo_nome, 
    cli.email
FROM 
    cliente cli
INNER JOIN compra c ON 
    cli.cliente_id = c.cliente_id;
--Consulta do total de itens comprados por cada cliente em cada categoria.

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
