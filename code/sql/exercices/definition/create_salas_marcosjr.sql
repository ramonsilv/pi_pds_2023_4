CREATE TABLE salas(
    id_sala VARCHAR PRIMARY KEY,
    nome_sala VARCHAR(20),
    tipo_sala   VARCHAR(20),
    lousa_digital BOOLEAN,
    projetor BOOLEAN,
    ar_condicionado BOOLEAN
);