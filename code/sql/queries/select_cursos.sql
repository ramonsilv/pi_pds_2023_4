--a) Mostrar todos os cursos em ordem alfabética pela descrição, sem a coluna ID

SELECT descricao_curso, carga_horaria_curso, modalidade, eixo
FROM cursos
ORDER BY descricao_curso;

--b) Mostrar apenas os cursos técnicos, ordenado pela descrição

SELECT descricao_curso, carga_horaria_curso, modalidade, eixo
FROM cursos
WHERE modalidade = 'Técnico'
ORDER BY descricao_curso;

--c) Mostrar todos os cursos do mesmo eixo, ordenado pela carga horária, da menor para a maior

SELECT descricao_curso, MIN(carga_horaria_curso) AS min_carga_horaria, modalidade, eixo
FROM cursos
WHERE eixo = 'Gestão e Negócios'
GROUP BY descricao_curso, modalidade, eixo
ORDER BY min_carga_horaria;

--d) Mostrar apenas os cursos técnicos de carga horária maior que 900h

SELECT descricao_curso, carga_horaria_curso, modalidade, eixo
FROM cursos
WHERE modalidade = 'Técnico' AND carga_horaria_curso > 900
ORDER BY carga_horaria_curso;

--e) Mostrar os cursos que não sejam do eixo de tecnologia da informação

SELECT descricao_curso, carga_horaria_curso, modalidade, eixo
FROM cursos
WHERE eixo != 'Tecnologia da Informação'
ORDER BY descricao_curso;