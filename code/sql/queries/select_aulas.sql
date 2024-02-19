-- Mostrar todas as aulas ocorridas na data de ontem
SELECT *
FROM aulas
WHERE data_aula = '2024-02-04';

-- Mostrar todas as aulas canceladas, ordenadas por data, da mais recente para a mais antiga
SELECT *
FROM aulas
WHERE status_aula = 'cancelada'
ORDER BY data_aula DESC;

-- Mostrar todas as aulas ministradas de uma mesma turma
SELECT *
FROM aulas
WHERE status_aula = 'ministrada' AND turma = '003'
ORDER BY data_aula;

-- Mostrar todas as aulas previstas de uma mesma sala
SELECT *
FROM aulas
WHERE status_aula = 'pendente' AND sala = '042';

-- Contagem de aulas por turma
SELECT turma, COUNT(*) AS total_aulas
FROM aulas
GROUP BY turma;

-- Criação de uma view para facilitar acesso à contagem de aulas por turma
CREATE VIEW aulas_por_turma AS
SELECT turma, COUNT(*) AS total_aulas
FROM aulas
GROUP BY turma;

-- Selecionar todas as contagens de aulas por turma a partir da view criada
SELECT * FROM aulas_por_turma;

--Contagem de aulas por status:
CREATE VIEW contagem_aulas_status AS
SELECT status_aula AS Status, COUNT(*) AS Quantidade
FROM aulas
GROUP BY status_aula
ORDER BY Quantidade DESC;

select * from contagem_aulas_status

--Contagem de aulas por mês:
CREATE VIEW contagem_aulas_mes AS
SELECT EXTRACT(MONTH FROM data_aula) AS Mês, COUNT(*) AS Quantidade
FROM aulas
GROUP BY EXTRACT(MONTH FROM data_aula)
ORDER BY Mês;

select * from contagem_aulas_mes
--Contagem de aulas por turma:

CREATE VIEW contagem_aulas_turma AS
SELECT fk_turma AS "ID da Turma", COUNT(*) AS Quantidade
FROM aulas
GROUP BY fk_turma;

select * from contagem_aulas_turma
--Suspensões de uma turma específica:

CREATE VIEW suspensao_por_turma AS
SELECT a.data_aula AS "Data da Aula", s.motivo_suspensao AS "Motivo da Suspensão", 
       CASE WHEN s.reposicao THEN 'Sim' ELSE 'Não' END AS "Reposição"
FROM aulas_suspensoes a_s
JOIN suspensoes s ON a_s.id_suspensao = s.id_suspensao
JOIN aulas a ON a_s.id_aulas = a.id_aula
WHERE a.fk_turma = 't-01' 
ORDER BY a.data_aula DESC;

select * from suspensao_por_turma

