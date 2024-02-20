CREATE TABLE aulas (
	"id_aula" VARCHAR PRIMARY KEY,
	"data_aula" DATE DEFAULT 'CURRENT_DATE',
	"status_aula" VARCHAR DEFAULT 'Prevista' CHECK "status_aula" IN ('Prevista', 'Ministrada', 'Suspensa'),
	"fk_turma" VARCHAR NOT NULL REFERENCES "turmas" ("id_turma"),
	"fk_unidade" VARCHAR NOT NULL REFERENCES "unidades" ("id_unidade"),
	"fk_sala" VARCHAR NOT NULL REFERENCES "salas" ("id_sala")
);
