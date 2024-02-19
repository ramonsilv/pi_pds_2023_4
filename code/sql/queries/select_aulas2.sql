-- truncate table
-- public.aulas,
-- public.aulas_suspensoes,
-- public.competencias,
-- public.cursos,
-- public.instrutores,
-- public.instrutores_competencias,
-- public.salas,
-- public.suspensoes,
-- public.turmas,
-- public.unidades_curriculares 
-- cascade

-- alter table cursos drop constraint cursos_modalidade_check 

-- ALTER TABLE cursos
-- ADD CONSTRAINT cursos_modalidade_check CHECK (modalidade IN ('Iniciação', 'Capacitação', 
-- 'Qualificação', 'Aperfeiçoamento', 'Técnico', 'Superior - Licenciatura', 
-- 'Superior - Bacharel', 'Superior - Tecnologia', 'Pós Graduação Lato Sensu - Especialização',
-- 'Pós-Graduação Stricto Sensu - Mestrado', 'Pós-Graduação Stricto Sensu - Doutorado'));

INSERT INTO cursos (id_curso, descricao_curso, carga_horaria_curso, modalidade, eixo) VALUES
('001', 'Programador de Sistemas', 200, 'Qualificação', 'Tecnologia da Informação'),
('002', 'Técnico em Informática', 1200, 'Técnico', 'Tecnologia da Informação'),
('003', 'Técnico em Adminitração', 1100, 'Técnico', 'Gestão e Negócios'),
('004', 'Programação em Python', 156, 'Qualificação', 'Tecnologia da Informação'),
('005', 'Especialização Técnica ', 360, 'Qualificação', 'Saúde'),
('006', 'Cabeleireiro Assistente', 230, 'Qualificação', 'Beleza'),
('007', 'Técnico em Segurança do Trabalho', 1200, 'Técnico', 'Segurança'),
('008', 'Assistente de Contabilidade', 160, 'Qualificação', 'Gestão e Negócios'),
('009', 'Técnico em Logística', 800, 'Técnico', 'Gestão e Negócios'),
('010', 'Atendente de Farmácia', 240, 'Qualificação', 'Saúde');

INSERT INTO competencias (id_competencia, descricao) 
VALUES
('m-01', 'Redes de Computadores'),
('m-02', 'Banco de Dados'),
('m-03', 'Programação Web'),
('m-04', 'Programação Java'),
('m-05', 'Programação Python'),
('m-06', 'Programação  JavaScript'),
('m-07', 'Progrmação PHP '),
('m-08', 'Programação C# '),
('m-09', 'Power BI'),
('m-10', 'HTML');

INSERT INTO instrutores (id_instrutor, matricula, nome_completo) 
VALUES 
('i-01', '1234', 'Fabiaha Harami'),
('i-02', '5678', 'Danielle Almeida'),
('i-03', '9012', 'José Carlos Cordeiro '),
('i-04', '8562', 'Pyobi silva'),
('i-05', '7980', 'Tawaga brandão'),
('i-06', '4156', 'Usbra carneiro'),
('i-07', '2323', 'Myol pereira'),
('i-08', '0195', 'Blanu franco'),
('i-09', '7238', 'Setes luiz'),
('i-10', '0023', 'Rumau silva');

INSERT INTO salas (id_sala,nome_sala,tipo_sala,lousa_digital,projetor,ar_condicionado) VALUES
('S-01','Informática','S', true, false, true),
('S-02','Morfologia','L', true, true, true),
('S-03','Estética','A', true, false, true),
('S-04','Design Gráfico','S', false, false, true),
('S-05','História','S', false, false, false),
('S-06','Análise e Desenvolvimento de Sistemas','A', true, false, true),
('S-07','Jovem apreniz','S', false, true, true),
('S-08','Química','L', false, false, false),
('S-09','Física','S', true, false, true),
('S-10','Geometria','A', true, true, false);

INSERT INTO turmas (id_turma, polo_educacional, turno, presencial, data_inicio, data_fim, horas_aula_dia, fk_curso)
VALUES
    ('t-01', 'CEP Cora', 'Matutino', true, '2024-02-05', '2024-03-15', 4, '001'),
    ('t-02', 'CEP Cora', 'Matutino', false, '2023-11-03', '2024-01-22', 4, '002'),
    ('t-03', 'CEP Cora', 'Noturno', true, '2022-06-05', '2024-06-04', 3, '003'),
    ('t-04', 'CEP Cora', 'Vespertino', true, '2023-08-10', '2023-12-20', 5, '004'),
    ('t-05', 'CEP Cora', 'Noturno', false, '2022-09-15', '2023-06-30', 3, '005'),
    ('t-06', 'CEP Cora', 'Matutino', true, '2023-02-20', '2023-11-30', 4, '006'),
    ('t-07', 'CEP Cora', 'Vespertino', false, '2022-05-01', '2023-03-15', 5, '007'),
    ('t-08', 'CEP Cora', 'Noturno', true, '2023-12-05', '2024-09-30', 3, '008'),
    ('t-09', 'CEP Cora', 'Matutino', false, '2022-08-08', '2023-04-25', 4, '009'),
    ('t-10', 'CEP Cora', 'Vespertino', true, '2024-01-10', '2024-07-01', 5, '010');
	
INSERT INTO unidades_curriculares ("id_unidade", "descricao_unidade", "carga_horaria_unidade", "ordem", "fk_curso", "fk_instrutor") VALUES
('1', 'Introdução ao Python', 10, 1, '001', 'i-01'),
('2', 'Estruturas de Dados em Python', 15, 2, '001', 'i-02'),
('3', 'SEO - Otimização para Motores de Busca', 8, 1, '002', 'i-03'),
('4', 'Análise de Dados com Pandas', 20, 3, '001', 'i-04'),
('5', 'Planejamento e Escopo de Projetos', 25, 1, '003', 'i-05'),
('6', 'Negociação e Gestão de Conflitos', 10, 2, '003', 'i-06'),
('7', 'Conversação Avançada em Inglês', 30, 4, '004', 'i-07'),
('8', 'Princípios de Design Gráfico', 15, 1, '005', 'i-08'),
('9', 'Orçamento Pessoal e Investimentos', 10, 1, '006', 'i-09'),
('10', 'Composição Fotográfica', 20, 2, '007', 'i-10');

INSERT INTO suspensoes VALUES
('01', 'feriado', '2024-02-10', 'integral', 'true');

INSERT INTO aulas VALUES
('01', '2024-02-09', 'Ministrada', 't-01', '1', 'S-01'),
('02', '2024-02-10', 'Prevista', 't-02', '2', 'S-02'),
('03', '2024-02-15', 'Ministrada', 't-03', '3', 'S-03'),
('04', '2024-02-05', 'Ministrada', 't-04', '4', 'S-04'),
('05', '2024-02-06', 'Prevista', 't-05', '5', 'S-05'),
('06', '2024-02-08', 'Prevista', 't-06', '6', 'S-06'),
('07', '2024-03-02', 'Prevista', 't-07', '7', 'S-07'),
('08', '2024-03-05', 'Prevista', 't-08', '8', 'S-08'),
('09', '2024-03-08', 'Ministrada', 't-09', '9', 'S-09'),
('10', '2024-02-29', 'Ministrada', 't-10', '10', 'S-10');


INSERT INTO instrutores_competencias (competencia, instrutor) 
VALUES 
('m-01', 'i-01'),
('m-02', 'i-02'),
('m-03', 'i-02'),
('m-04', 'i-04'),
('m-05', 'i-05'),
('m-06', 'i-06'),
('m-07', 'i-06'),
('m-08', 'i-08'),
('m-09', 'i-09'),
('m-10', 'i-10');

INSERT INTO aulas_suspensoes (id_aulas, id_suspensao) VALUES
('01', '01'),
('02', '01'),
('03', '01'),
('04', '01');