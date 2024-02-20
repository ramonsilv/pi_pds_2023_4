CREATE TABLE turmas (
  id_turma varchar PRIMARY KEY,
  polo_educacional varchar,
  turno varchar NOT NULL,
  presencial boolean,
  data_inicio date NOT NULL,
  data_fim date,
  horas_aula_dia integer NOT NULL,
  fk_curso varchar REFERENCES "cursos" ("id_curso")
);
