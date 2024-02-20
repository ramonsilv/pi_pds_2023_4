CREATE TABLE instrutores_competencias (
    competencia VARCHAR NOT NULL,
    instrutor VARCHAR NOT NULL
);

ALTER TABLE instrutores_competencias ADD FOREIGN KEY (instrutor) REFERENCES instrutores (id_instrutor);

ALTER TABLE instrutores_competencias ADD FOREIGN KEY (competencia) REFERENCES competencias (id_competencia);