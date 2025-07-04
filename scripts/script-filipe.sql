--consulta das categorias
select
	p.nome as "Nome do Produto",
	c.categoria as "Categoria"
from
	produto p
inner join categoria c on
	p.categoria_id = c.categoria_id;
--
