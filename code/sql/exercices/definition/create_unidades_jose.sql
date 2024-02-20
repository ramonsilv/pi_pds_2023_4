CREATE TABLE "unidades_curriculares" (
  "id_unidade" varchar PRIMARY KEY,
  "descricao_unidade" varchar NOT NULL,
  "carga_horaria_unidade" integer NOT NULL,
  "ordem" int NOT NULL,
  "fk_curso" varchar NOT NULL REFERENCES cursos(id_curso),
  "fk_instrutor" varchar NOT NULL REFERENCES instrutores(id_instrutor)
);

