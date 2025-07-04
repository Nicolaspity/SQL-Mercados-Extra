--Consultando quantos clientes que compraram panos de prato
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

--Consultando o id do cliente chamado 'Rafael'
select
	cli.cliente_id as id_do_rafael
from
	cliente cli
where lower(cli.primeiro_nome) = 'rafael';
