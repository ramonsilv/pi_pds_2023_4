/* Consultando a tabela*/

/*a)Mostrar os motivos e datas de suspensão,
ordenados por data, da mais antiga para a mais recente*/
select "motivo_suspensao", "data_suspensao"
from "suspensoes"
order by "data_suspensao" asc;

/*b) Mostrar todas as suspensões de uma mesma data*/
select *
from "suspensoes"
where "data_suspensao" = '2024-01-06';

/*c) Mostrar todas as suspensões do turno vespertino*/
select *
from "suspensoes"
where "turno_suspensao" = 'vespertino';

/*d) Mostrar todas as suspensões com reposição  */
select *
from "suspensoes"
where "reposicao" = true;

/* e) Mostrar todas as suspensões que não tenham reposição ocorridas no mês de janeiro */
select *
from "suspensoes"
where "reposicao" = false and extract(month from to_date("data_suspensao", 'yyyy-mm-dd')) = 1;
