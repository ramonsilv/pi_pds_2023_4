CREATE TABLE "cursos" (
  "id_curso" varchar PRIMARY KEY,
  "descricao_curso" varchar NOT NULL,
  "carga_horaria_curso" integer NOT NULL,
  "modalidade" varchar NOT NULL CHECK "modalidade" IN ( 'Iniciação', 'Capacitação', 
  'Qualificação', 'Aperfeiçoamento', 'Técnico, Superior - Licenciatura', 
  'Superior - Bacharel, Superior - Tecnologia', 'Pós Graduação Lato Sensu - Especialização',
  'Pós-Graduação Stricto Sensu - Mestrado', 'Pós-Graduação Stricto Sensu - Doutorado'),
  "eixo" varchar NOT NULL
);

