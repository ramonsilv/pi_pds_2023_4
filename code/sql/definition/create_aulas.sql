CREATE TABLE aulas (
	"id_aula" VARCHAR PRIMARY KEY,
	"data_aula" DATE DEFAULT 'CURRENT_DATE',
	"status_aula" VARCHAR DEFAULT 'Prevista' CHECK "status_aula" IN ('Prevista', 'Ministrada', 'Suspensa'),
	"turma" VARCHAR NOT NULL REFERENCES "turmas" ("id_turma"),
	"unidade" VARCHAR NOT NULL REFERENCES "unidades" ("id_unidade"),
	"sala" VARCHAR NOT NULL REFERENCES "salas" ("id_sala")
);
