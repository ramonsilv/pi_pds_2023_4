SELECT * FROM unidades where fk_curso = '1';

SELECT * FROM unidades WHERE ordem = 1;

SELECT descricao_unidade, carga_horaria_unidade FROM unidades ORDER BY carga_horaria_unidade DESC;

SELECT * FROM unidades WHERE carga_horaria_unidade > 36;

SELECT * FROM unidades WHERE carga_horaria_unidade < 100 AND ordem <> 1;

SELECT fk_curso, SUM(carga_horaria_unidade) from unidades group by fk_curso;

CREATE VIEW orelha AS SELECT fk_curso, SUM(carga_horaria_unidade) AS soma_carga_horaria FROM unidades GROUP BY fk_curso;

SELECT * FROM orelha;