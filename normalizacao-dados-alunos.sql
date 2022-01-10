CREATE DATABASE schoolsys;
USE schoolsys;

CREATE TABLE alunos(
	matricula BIGINT,
    nome VARCHAR(100) NOT NULL,
    id_curso INT NOT NULL,
    CONSTRAINT alunos_pk PRIMARY KEY(matricula),
    CONSTRAINT alunos_cursos_fk FOREIGN KEY (id_curso)
		REFERENCES cursos(id)
);

CREATE TABLE cursos(
	id INT,
    curso VARCHAR(100) NOT NULL,
    CONSTRAINT cursos_pk PRIMARY KEY (id)
);

CREATE TABLE disciplinas(
	id INT,
    nome VARCHAR(100) NOT NULL,
    id_curso INT NOT NULL,
    CONSTRAINT disciplinas_pk PRIMARY KEY(id),
    CONSTRAINT disciplinas_cursos_fk FOREIGN KEY (id_curso)
		REFERENCES cursos(id)
);

CREATE TABLE notas(
    matricula_aluno BIGINT,
    id_disciplina INT NOT NULL,
    nota DECIMAL(10, 2) NOT NULL,
    CONSTRAINT notas_pk PRIMARY KEY (matricula_aluno, id_disciplina),
    CONSTRAINT notas_alunos_fk FOREIGN KEY (matricula_aluno)
		REFERENCES alunos(matricula),
	CONSTRAINT id_disciplina FOREIGN KEY (id_disciplina)
		REFERENCES disciplinas(id)
);