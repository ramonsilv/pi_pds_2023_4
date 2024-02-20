CREATE TABLE "suspensoes" (
  "id_suspensao" varchar PRIMARY KEY,
  "motivo_suspensao" varchar NOT NULL,
  "data_suspensao" varchar NOT NULL,
  "turno_suspensao" varchar NOT NULL DEFAULT 'Integral',
  "reposicao" boolean DEFAULT true
	);