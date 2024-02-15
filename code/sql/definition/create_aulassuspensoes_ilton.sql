create table aulas_suspensoes (
  id_aulas varchar NOT NULL REFERENCES "aulas" ("id_aula"), 
  id_suspensao varchar NOT NULL REFERENCES "suspensoes" ("id_suspensao"),
  PRIMARY KEY (id_aulas,id_suspensao)
);
