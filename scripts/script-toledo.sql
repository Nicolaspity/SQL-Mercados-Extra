--Consulta todos os items contidos dentro da categoria bebidas
SELECT 
    p.produto_id,
    p.nome,
    p.preco,
    p.inventario,
    cat.categoria
FROM 
    produto p
INNER JOIN categoria cat ON 
    p.categoria_id = cat.categoria_id
WHERE 
    LOWER(cat.categoria) = 'bebidas';

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
