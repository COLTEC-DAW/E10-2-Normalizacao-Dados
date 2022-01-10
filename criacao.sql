CREATE DATABASE normalizacao;
USE normalizacao;

CREATE TABLE alunos(
	matricula INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    id_curso INT NOT NULL,

    CONSTRAINT alunos_pk PRIMARY KEY(matricula),
    CONSTRAINT alunos_cursos_fk FOREIGN KEY (id_curso)
		REFERENCES cursos(id_curso)
);

CREATE TABLE cursos(
	id_curso INT,
    curso VARCHAR(50) NOT NULL,

    CONSTRAINT cursos_pk PRIMARY KEY (id_curso)
);

CREATE TABLE disciplinas(
	id_disciplina INT,
    nome VARCHAR(50) NOT NULL,

    CONSTRAINT disciplinas_pk PRIMARY KEY(id_disciplina),
);

CREATE TABLE notas(
    id_nota INT NOT NULL ,
    id_aluno INT NOT NULL,
    id_curso INT NOT NULL,
    id_disciplina INT NOT NULL,
    notas DECIMAL(3,2) NOT NULL,

    CONSTRAINT notas_pk PRIMARY KEY (id_notas), 
	CONSTRAINT id_disciplina FOREIGN KEY (id_disciplina)
		REFERENCES disciplinas(id_disciplina)
        CONSTRAINT id_curso FOREIGN KEY (id_curso)
		REFERENCES cursos(id_curso)
        CONSTRAINT id_aluno FOREIGN KEY (id_aluno)
		REFERENCES alunos(id_aluno)
); 
CREATE TABLE disciplinas_curso(
    id_disciplinas_curso INT NOT NULL,
    id_curso INT NOT NULL,
    id_disciplina INT NOT NULL,

    CONSTRAINT disciplinas_curso_pk PRIMARY KEY (id_disciplinas_curso), 
	CONSTRAINT id_disciplina FOREIGN KEY (id_disciplina)
		REFERENCES disciplinas(id_disciplina)
        CONSTRAINT id_curso FOREIGN KEY (id_curso)
		REFERENCES cursos(id_curso)
); 