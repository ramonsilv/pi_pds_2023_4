CREATE TABLE aulas (
	"id_aula" VARCHAR PRIMARY KEY,
	"data_aula" DATE DEFAULT 'NOW()',
	"status_aula" VARCHAR DEFAULT 'pendente',
	"turma" VARCHAR NOT NULL REFERENCES "turmas" ("id_turma"),
	"unidade" VARCHAR NOT NULL REFERENCES "unidades" ("id_unidade"),
	"sala" VARCHAR NOT NULL REFERENCES "salas" ("id_sala")
);