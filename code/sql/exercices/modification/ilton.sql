INSERT INTO aulas VALUES
('11', '2024-02-12', 'Prevista', '2', '1', '1'),
('12', '2024-02-18', 'Ministrada', '2', '1', '1'),
('13', '2024-02-10', 'Suspensa', '2', '1', '1'),
('14', '2024-11-02', 'Suspensa', '2', '1', '5'),

('15', '2024-02-25', 'Prevista', '4', '1', '1'),
('16', '2024-02-27', 'Ministrada', '4', '1', '1'),
('17', '2024-03-31', 'Suspensa', '4', '1', '1'),
('27', '2024-04-19', 'Suspensa', '4', '1', '7'),

('18', '2024-03-04', 'Prevista', '8', '1', '1'),
('19', '2024-03-07', 'Ministrada', '8', '1', '1'),
('23', '2024-09-07', 'Suspensa', '8', '1', '1'),
('24', '2024-01-06', 'Suspensa', '8', '1', '9'),

('20', '2024-03-10', 'Ministrada', '11', '1', '1'),
('21', '2024-03-13', 'Prevista', '11', '1', '1'),
('34', '2024-11-15', 'Suspensa', '11', '1', '1'),
('33', '2024-04-01', 'Suspensa', '11', '1', '8'),

('22', '2024-03-16', 'Ministrada', '12', '1', '1'),
('25', '2024-03-23', 'Prevista', '12', '1', '1'),
('26', '2024-04-19', 'Suspensa', '12', '1', '1'),
('28', '2024-02-10', 'Suspensa', '12', '1', '15'),

('29', '2024-04-04', 'Ministrada', '14', '1', '1'),
('31', '2024-04-10', 'Prevista', '14', '1', '1'),
('30', '2024-04-21', 'Suspensa', '14', '1', '1'),
('32', '2024-04-01', 'Suspensa', '14', '1', '18'),

('35', '2024-04-20', 'Prevista', '18', '1', '1'),
('36', '2024-04-22', 'Ministrada', '18', '1', '1'),
('37', '2024-11-02', 'Suspensa', '18', '1', '1'),
('38', '2024-09-07', 'Suspensa', '18', '1', '13'),

('39', '2024-05-02', 'Ministrada', '20', '1', '1'),
('40', '2024-05-05', 'Prevista', '20', '1', '1'),
('41', '2024-10-02', 'Suspensa', '20', '1', '1'),
('43', '2024-11-02', 'Suspensa', '20', '1', '1');

INSERT INTO aulas_suspensoes VALUES 
('13','2'),
('14','2'),
('17','2'),
('27','2'),
('23','2'),
('24','2'),
('34','2'),
('33','2'),
('26','1'),
('28','1'),
('30','3'),
('32','3'),
('37','1'),
('38','3'),
('41','1'),
('43','3');
select * from aulas_suspensoes

SELECT
    a.status_aula AS status,
    COUNT(CASE WHEN a.status_aula = 'Prevista' THEN a.id_aula END) AS "aulas previstas",
    COUNT(CASE WHEN a.status_aula = 'Ministrada' THEN a.id_aula END) AS "aulas ministradas",
    SUM(CASE WHEN a.status_aula = 'Suspensa' AND s.reposicao = true THEN 1 ELSE 0 END) AS "aulas suspensas c/ reposição",
    SUM(CASE WHEN a.status_aula = 'Suspensa' AND s.reposicao = false THEN 1 ELSE 0 END) AS "aulas suspensas s/ reposição"
FROM
    aulas a
LEFT JOIN
    aulas_suspensoes sa ON a.id_aula = sa.id_aula
LEFT JOIN
    suspensoes s ON sa.id_suspensao = s.id_suspensao
GROUP BY
    a.status_aula;


INSERT INTO instrutores_competencias VALUES 
('1', '1'),
('2', '2'),
('2', '5'),
('2', '6'),
('3', '4'),
('3', '5'),
('3', '9'),
('4', '1'),
('4', '2'),
('5', '10'),
('6', '3'),
('6', '2'),
('7', '5'),
('7', '4'),
('8', '7'),
('8', '8'),
('8', '9'),
('9', '8'),
('9', '7'),
('10', '8'),
('10', '9');

SELECT
    i.nome_completo AS "nome do instrutor",
    COUNT(ic.id_competencia) AS "total de competências"
FROM
    instrutores i
LEFT JOIN
    instrutores_competencias ic ON i.id_instrutor = ic.id_instrutor
GROUP BY
    i.nome_completo;