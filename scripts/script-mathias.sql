--Verificando se o pano está em estoque
SELECT 
    COUNT(DISTINCT cli.cliente_id) AS Clientes_que_compraram_pano_de_prato,
    CASE 
        WHEN SUM(cp.quantidade) >= p.inventario THEN 'Sem estoque'
        ELSE 'Em estoque'
    END AS status_estoque
FROM 
    compra c
INNER JOIN cliente cli ON
    c.cliente_id = cli.cliente_id
INNER JOIN compra_produto cp ON
    c.compra_id = cp.compra_id
INNER JOIN produto p ON
    p.produto_id = cp.produto_id
WHERE 
    LOWER(p.nome) = 'pano de prato'
GROUP BY 
    p.inventario;

--Consultando as categorias
SELECT 
    categoria 
FROM 
    categoria;
