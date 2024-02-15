CREATE TABLE instrutores (
	id_instrutor VARCHAR PRIMARY KEY NOT NULL, 
	matricula VARCHAR(50) NOT NULL UNIQUE,
	nome_completo VARCHAR NOT NULL
);
