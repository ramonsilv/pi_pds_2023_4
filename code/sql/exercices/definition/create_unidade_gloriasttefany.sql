CREATE TABLE "unidades_curriculares" (
  "id_unidade" varchar PRIMARY KEY,
  "descricao_unidade" varchar NOT NULL,
  "carga_horaria_unidade" integer NOT NULL,
  "ordem" int NOT NULL,
  "fk_curso" varchar NOT NULL,
  "fk_instrutor" varchar NOT NULL
);

ALTER TABLE "unidades_curriculares" ADD FOREIGN KEY ("fk_curso") REFERENCES "cursos" ("id_curso");

ALTER TABLE "unidades_curriculares" ADD FOREIGN KEY ("fk_instrutor") REFERENCES "instrutores" ("id_instrutor");
