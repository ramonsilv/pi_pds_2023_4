CREATE TABLE "unidades_curriculares" (
  "id_unidade_curricular" varchar PRIMARY KEY,
  "descricao_unidade" varchar NOT NULL,
  "carga_horaria_unidade" integer NOT NULL,
  "ordem" int NOT NULL,
  "fk_curso" varchar references cursos(id_curso),
  "fk_instrutor" varchar references instrutores(id_instrutor)
);

