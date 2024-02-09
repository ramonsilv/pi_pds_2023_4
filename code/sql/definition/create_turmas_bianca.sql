CREATE TABLE "turmas" (
  "id_turma" varchar PRIMARY KEY,
  "turno" varchar NOT NULL,
  "data_inicio" date NOT NULL,
  "data_fim" date,
  "horas_aula_dia" integer NOT NULL,
  "fk_curso" varchar REFERENCES cursos(id_curso)
);
