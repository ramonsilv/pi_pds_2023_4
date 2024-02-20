CREATE TABLE "turmas" (
	"id_turma" varchar PRIMARY KEY,
	"polo_educacional" varchar NOT NULL,
	"turno" varchar NOT NULL CHECK "turno" IN ('Matutino', 'Vespertino', 'Noturno'),
	"presencial" boolean DEFAULT true,
	"data_inicio" date NOT NULL DEFAULT CURRENT_DATE,
	"data_fim" date CHECK "data_fim" > "data_inicio",
	"horas_aula_dia" integer NOT NULL,
	"fk_curso" varchar REFERENCES cursos("id_curso")
);
