-- Tabelas Modelo Secundárias

CREATE TABLE cursos (
  id_curso VARCHAR PRIMARY KEY,
  descricao_curso VARCHAR NOT NULL,
  carga_horaria_curso INTEGER NOT NULL,
  modalidade VARCHAR NOT NULL CHECK ( 
	  modalidade IN (
		'Iniciação', 'Capacitação', 'Qualificação', 
		'Aperfeiçoamento', 'Técnico', 'Superior - Licenciatura', 
		'Superior - Bacharel', 'Superior - Tecnologia', 
		'Pós Graduação Lato Sensu - Especialização',
		'Pós-Graduação Stricto Sensu - Mestrado', 
		'Pós-Graduação Stricto Sensu - Doutorado'
	  )
  ),
  eixo VARCHAR NOT NULL
);

CREATE TABLE suspensoes (
  id_suspensao VARCHAR PRIMARY KEY,
  motivo_suspensao VARCHAR NOT NULL,
  data_suspensao DATE NOT NULL DEFAULT CURRENT_DATE,
  turno_suspensao VARCHAR NOT NULL DEFAULT 'Integral',
  reposicao BOOLEAN DEFAULT true
);

CREATE TABLE salas (
  id_sala VARCHAR PRIMARY KEY,
  nome_sala VARCHAR NOT NULL,
  tipo_sala CHAR(1) CHECK ( 
	  tipo_sala IN ('L', 'A', 'S')
  ),
  lousa_digital BOOLEAN DEFAULT false,
  projetor BOOLEAN DEFAULT true,
  ar_condicionado BOOLEAN DEFAULT true
);

CREATE TABLE instrutores (
	id_instrutor VARCHAR PRIMARY KEY, 
	matricula VARCHAR(50) NOT NULL UNIQUE,
	nome_completo VARCHAR NOT NULL
);

CREATE TABLE competencias (
    id_competencia VARCHAR PRIMARY KEY NOT NULL,
    descricao VARCHAR NOT NULL
);

--Tabela Modelo Primárias

CREATE TABLE unidades_curriculares (
  id_unidade VARCHAR PRIMARY KEY,
  descricao_unidade VARCHAR NOT NULL,
  carga_horaria_unidade INTEGER NOT NULL,
  ordem INT NOT NULL,
  fk_curso VARCHAR NOT NULL REFERENCES cursos (id_curso),
  fk_instrutor VARCHAR NOT NULL REFERENCES instrutores (id_instrutor)
);

CREATE TABLE turmas (
	id_turma VARCHAR PRIMARY KEY,
	polo_educacional VARCHAR NOT NULL,
	turno VARCHAR NOT NULL CHECK (
		turno IN ('Matutino', 'Vespertino', 'Noturno')
	),
	presencial BOOLEAN DEFAULT true,
	data_inicio DATE NOT NULL DEFAULT CURRENT_DATE,
	data_fim DATE CHECK( data_fim > data_inicio ),
	horas_aula_dia INTEGER NOT NULL,
	fk_curso VARCHAR REFERENCES cursos(id_curso)
);

-- Tabelas Fato

CREATE TABLE aulas (
	id_aula VARCHAR PRIMARY KEY,
	data_aula DATE DEFAULT CURRENT_DATE,
	status_aula VARCHAR DEFAULT 'Prevista' CHECK (
		status_aula IN ('Prevista', 'Ministrada', 'Suspensa')
	),
	fk_turma VARCHAR NOT NULL REFERENCES turmas (id_turma),
	fk_unidade VARCHAR NOT NULL REFERENCES unidades_curriculares (id_unidade),
	fk_sala VARCHAR NOT NULL REFERENCES salas (id_sala)
);

-- Tabelas Relação

CREATE TABLE instrutores_competencias (
    id_competencia VARCHAR NOT NULL REFERENCES competencias (id_competencia),
    id_instrutor VARCHAR NOT NULL REFERENCES instrutores (id_instrutor),
	PRIMARY KEY (id_competencia, id_instrutor)
);

CREATE TABLE aulas_suspensoes (
  id_aula varchar NOT NULL REFERENCES aulas (id_aula), 
  id_suspensao varchar NOT NULL REFERENCES suspensoes (id_suspensao),
  PRIMARY KEY (id_aula, id_suspensao)
);
