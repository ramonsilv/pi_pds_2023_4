INSERT INTO cursos VALUES
('1', 'Programador de Sistemas', 200, 'Qualificação', 'Tecnologia da Informação'),
('2', 'Técnico em Informática', 1200, 'Técnico', 'Tecnologia da Informação'),
('3', 'Técnico em Adminitração', 1100, 'Técnico', 'Gestão e Negócios'),
('4', 'Programação em Python', 156, 'Qualificação', 'Tecnologia da Informação'),
('5', 'Especialização em Instrumentação Cirúrgica', 360, 'Pós Graduação Lato-Sensu - Especialização', 'Saúde'),
('6', 'Design de Sobrancelhas', 130, 'Aperfeiçoamento', 'Moda e Beleza'),
('7', 'Técnico em Segurança do Trabalho', 1200, 'Técnico', 'Segurança'),
('8', 'Assistente de Contabilidade', 160, 'Qualificação', 'Gestão e Negócios'),
('9', 'Técnico em Logística', 800, 'Técnico', 'Transportes'),
('10', 'Atendente de Farmácia', 240, 'Qualificação', 'Saúde'),
('11', 'Tecnólogo - Analise e Desenvolvimento Sistemas', 1600, 'Superior - Tecnologia', 'Tecnologia da Informação'),
('12', 'Programador de Sistemas', 180, 'Qualificação', 'Tecnologia da Informação'),
('13', 'Desenvolvedor Web Python', 150, 'Qualificação', 'Tecnologia da Informação'),
('14', 'Mestrado Profissional em Ciência de Dados', 360, 'Pós Graduação Stricto-Sensu - Mestrado', 'Tecnologia da Informação'),
('15', 'Lógica de Programação', 40, 'Capacitação', 'Tecnologia da Informação'),
('16', 'Desenvolvedor Web PHP', 150, 'Qualificação', 'Tecnologia da Informação'),
('17', 'Tecnólogo - Redes de Computadores', 2200, 'Superior - Tecnologia', 'Tecnologia da Informação'),
('18', 'Automaquiagem', 40, 'Capacitação', 'Moda e Beleza'),
('19', 'Engenharia de Software', 3400, 'Superior - Bacharelado', 'Tecnologia da Informação'),
('20', 'Sistemas de Informação', 2600, 'Superior - Bacharelado', 'Tecnologia da Informação');

INSERT INTO suspensoes VALUES
('1', 'Feriado Nacional - Carnaval', '2024-02-10', 'Integral', true),
('2', 'Feriado Nacional - Finados', '2024-11-02', 'Noturno', false),
('3', 'Feriado Nacional - Páscoa', '2024-03-31', 'Noturno', true),
('4', 'Data Comemorativa - Dia dos Povos Originários', '2024-04-19', 'Matutino', false),
('5', 'Feriado Nacional - Independência', '2024-09-07', 'Integral', true),
('6', 'Feriado Nacional - Dia de Reis', '2024-01-06', 'Vespertino', false),
('7', 'Feriado Nacional - Proclamação da República', '2024-11-15', 'Integral', true),
('8', 'Feriado Nacional - Dia do trabalho', '2024-05-01', 'Integral', true),
('9', 'Feriado Nacional - Tiradentes', '2024-04-21', 'Vespertino', true),
('10', 'Data Comemorativa - Dia da Mentira', '2024-04-01', 'Matutino', false),
('11', 'Atestado Médico Instrutor', '2024-02-10', 'Integral', true);

INSERT INTO salas VALUES
('1','Sala 101','S', false, true, false),
('2','Laboratório de Anatomia','L', true, true, true),
('3','Auditório A','A', true, true, false),
('4','Sala 102','S', false, true, false),
('5','Sala 103','S', true, true, false),
('6','Auditório B','A', true, false, true),
('7','Sala 104','S', true, true, false),
('8','Laboratório de Química','L', false, false, false),
('9','Sala 105','S', true, false, true),
('10','Laboratório de Informática','L', false, true, false),
('11','Sala 106','S', true, false, true),
('12','Sala 201','S', true, true, true),
('13','Auditório C','A', true, false, true),
('14','Sala 202','S', false, false, true),
('15','Sala 203','S', false, false, false),
('16','Auditório D','A', true, false, true),
('17','Sala 204','S', false, true, true),
('18','Laboratório de Estética','L', false, false, false),
('19','Sala 205','S', true, false, true),
('20','Sala 206','S', true, true, false);

INSERT INTO instrutores VALUES 
('1', '1234', 'Fabiana'),
('2', '5678', 'Danielle'),
('3', '9012', 'José Carlos'),
('4', '8562', 'Taynan'),
('5', '7980', 'Ludmilla'),
('6', '4156', 'Camila'),
('7', '2323', 'Matsui'),
('8', '0195', 'Luís'),
('9', '7238', 'Yasmine'),
('10', '0023', 'Débora');

INSERT INTO competencias VALUES
('1', 'Redes de Computadores'),
('2', 'Banco de Dados'),
('3', 'Programação Web'),
('4', 'Programação Java'),
('5', 'Programação Python'),
('6', 'Programação JavaScript'),
('7', 'Administração'),
('8', 'Business Model Canvas'),
('9', 'Power BI'),
('10', 'Saúde e Segurança do Trabalho');

INSERT INTO unidades_curriculares VALUES
('1', 'Introdução ao Python', 40, 1, '1', '1'),
('2', 'Estruturas de Dados em Python', 60, 2, '1', '2'),
('3', 'SEO - Otimização para Motores de Busca', 12, 1, '2', '3'),
('4', 'Análise de Dados com Pandas', 56, 3, '1', '4'),
('5', 'Planejamento e Escopo de Projetos', 30, 1, '3', '5'),
('6', 'Negociação e Gestão de Conflitos', 20, 2, '3', '6'),
('7', 'Conversação Avançada em Inglês', 30, 4, '4', '7'),
('8', 'Princípios de Design Gráfico', 36, 1, '5', '8'),
('9', 'Orçamento Pessoal e Investimentos', 40, 1, '6', '9'),
('10', 'Composição Fotográfica', 20, 2, '7', '10'),
('11', 'Introdução ao Python', 80, 1, '1', '1'),
('12', 'Estruturas de Dados em Python', 40, 2, '1', '2'),
('13', 'SEO - Otimização para Motores de Busca', 20, 1, '2', '3'),
('14', 'Análise de Dados com Pandas', 60, 3, '1', '4'),
('15', 'Planejamento e Escopo de Projetos', 44, 1, '3', '5'),
('16', 'Negociação e Gestão de Conflitos', 16, 2, '3', '6'),
('17', 'Conversação Avançada em Inglês', 30, 4, '4', '7'),
('18', 'Princípios de Design Gráfico', 20, 1, '5', '8'),
('19', 'Orçamento Pessoal e Investimentos', 44, 1, '6', '9'),
('20', 'Composição Fotográfica', 52, 2, '7', '10');

INSERT INTO turmas VALUES
('1', 'CEP Cora Coralina', 'Matutino', true, '2023-01-18', '2024-03-18', 5, '1'),
('2', 'CEP Cora Coralina', 'Matutino', true, '2024-01-18', '2025-03-18', 5, '2'),
('3', 'CEP Cora Coralina', 'Matutino', true, '2023-01-18', '2024-03-18', 5, '3'),
('4', 'CEP Cora Coralina', 'Vespertino', true, '2024-02-02', '2025-05-15', 5, '1'),
('5', 'CEP Cora Coralina', 'Vespertino', true, '2023-02-02', '2024-05-15', 5, '2'),
('6', 'CEP Cora Coralina', 'Vespertino', true, '2023-02-02', '2024-05-15', 5, '3'),
('7', 'CEP Cora Coralina', 'Noturno', true, '2023-02-06', '2024-03-15', 5, '1'),
('8', 'CEP Cora Coralina', 'Noturno', true, '2024-02-06', '2025-03-15', 5, '3'),
('9', 'CEP Aparecida de Goiânia', 'Noturno', true, '2023-02-03', '2024-03-15', 5, '2'),
('10', 'CEP Aparecida de Goiânia', 'Noturno', false, '2023-02-03', '2024-03-15', 5, '3'),
('11', 'CEP Aparecida de Goiânia', 'Matutino', true, '2024-02-05', '2024-03-15', 4, '4'),
('12', 'CEP Aparecida de Goiânia', 'Vespertino', false, '2023-11-03', '2024-01-22', 4, '3'),
('13', 'CEP Jataí', 'Noturno', true, '2022-06-05', '2024-06-04', 3, '5'),
('14', 'CEP Jataí', 'Noturno', true, '2023-08-10', '2023-12-20', 5, '1'),
('15', 'CEP Jataí', 'Vespertino', false, '2022-09-15', '2023-06-30', 3, '2'),
('16', 'CEP Jataí', 'Matutino', true, '2023-02-20', '2023-11-30', 4, '3'),
('17', 'CEP Jataí', 'Matutino', false, '2022-05-01', '2023-03-15', 5, '1'),
('18', 'CEP Porangatu', 'Noturno', true, '2023-12-05', '2024-09-30', 3, '4'),
('19', 'CEP Porangatu', 'Matutino', false, '2022-08-08', '2023-04-25', 4, '2'),
('20', 'CEP Porangatu', 'Vespertino', true, '2024-01-10', '2024-07-01', 5, '5');

-- INSERT INTO aulas VALUES
-- ('1', '2024-02-09', 'Ministrada', '3', '1', '1'),
-- ('2', '2024-02-10', 'Prevista', '1', '1', '1'),
-- ('3', '2024-02-15', 'Ministrada', '1', '1', '1'),
-- ('4', '2024-02-05', 'Ministrada', '1', '1', '1'),
-- ('5', '2024-02-06', 'Prevista', '1', '1', '1'),
-- ('6', '2024-02-08', 'Prevista', '1', '1', '1'),
-- ('7', '2024-03-02', 'Suspensa', '1', '1', '1'),
-- ('8', '2024-03-05', 'Prevista', '1', '1', '1'),
-- ('9', '2024-03-08', 'Ministrada', '1', '1', '1'),
-- ('10', '2024-02-29', 'Ministrada', '1', '1', '1'),
-- 


selct
-- INSERT INTO aulas_suspensoes VALUES 
-- ('')



-- INSERT INTO instrutores_competencias VALUES 
-- ('1', '1'),
-- ('2', '2'),
-- ('3', '2'),
-- ('4', '4'),
-- ('5', '5'),
-- ('6', '6'),
-- ('7', '6'),
-- ('8', '8'),
-- ('9', '9'),
-- ('10', '10');
