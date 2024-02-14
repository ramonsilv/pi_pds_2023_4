CREATE TABLE aulas (
	"id_aula" VARCHAR PRIMARY KEY,
	"data_aula" DATE DEFAULT 'NOW()',
	"status_aula" VARCHAR DEFAULT 'pendente',
	"turma" VARCHAR NOT NULL REFERENCES "turmas" ("id_turma"),
	"unidade" VARCHAR NOT NULL REFERENCES "unidades" ("id_unidade"),
	"sala" VARCHAR NOT NULL REFERENCES "salas" ("id_sala")
);

ALTER TABLE "turmas" ADD FOREIGN KEY ("fk_curso") REFERENCES "cursos" ("id_curso");

ALTER TABLE "unidades" ADD FOREIGN KEY ("fk_curso") REFERENCES "cursos" ("id_curso");

ALTER TABLE "aulas" ADD FOREIGN KEY ("turma") REFERENCES "turmas" ("id_turma");

ALTER TABLE "aulas" ADD FOREIGN KEY ("unidade") REFERENCES "unidades" ("id_unidade");

ALTER TABLE "aulas" ADD FOREIGN KEY ("sala") REFERENCES "salas" ("id_sala");

ALTER TABLE "aulas_suspensoes" ADD FOREIGN KEY ("id_aulas") REFERENCES "aulas" ("id_aula");

ALTER TABLE "aulas_suspensoes" ADD FOREIGN KEY ("id_suspensao") REFERENCES "suspensoes" ("id_suspensao");

ALTER TABLE aulas ALTER COLUMN "suspensao" DROP NOT NULL;