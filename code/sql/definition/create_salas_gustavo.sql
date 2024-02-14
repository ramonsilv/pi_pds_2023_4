CREATE TABLE "salas" (
  "id_sala" varchar PRIMARY KEY,
  "nome_sala" varchar NOT NULL,
  "tipo_sala" char(1) CHECK "tipo_sala" IN ('L', 'A', 'S'),
  "lousa_digital" boolean,
  "projetor" boolean,
  "ar_condicionado" boolean
);