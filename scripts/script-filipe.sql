--consulta do preço do biscoito
select
    p.nome as "Nome do Produto",
    p.preco as "Preço"
from
    produto p

--consulta de quantas categorias chamadas "Bebidas" existe
select
	count(*) as "Total de Bebidas"
from
	produto p
inner join categoria c on
	p.categoria_id = c.categoria_id
where
	c.categoria = 'Bebidas';
