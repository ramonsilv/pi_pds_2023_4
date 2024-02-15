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