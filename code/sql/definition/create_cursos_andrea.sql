CREATE TABLE "cursos" (
  "id_curso" varchar PRIMARY KEY,
  "descricao_curso" varchar NOT NULL,
  "carga_horaria_curso" integer NOT NULL,
  "modalidade" varchar NOT NULL,
  "eixo" varchar NOT NULL
);