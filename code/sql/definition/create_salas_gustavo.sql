CREATE TABLE "salas" (
  "id_sala" varchar PRIMARY KEY,
  "nome_sala" varchar NOT NULL,
  "tipo_sala" varchar,
  "lousa_digital" boolean,
  "projetor" boolean,
  "ar_condicionado" boolean
);