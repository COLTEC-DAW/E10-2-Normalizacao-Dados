CREATE DATABASE sistemaNotas;

USE sistemanotas;

CREATE TABLE alunos (
	matricula INT NOT NULL,
	nome VARCHAR(60) NOT NULL,
	curso_id INT NOT NULL,
    CONSTRAINT alunos_pk PRIMARY KEY (matricula),
    CONSTRAINT alunos_curso_id_fk FOREIGN KEY (curso_id)
		REFERENCES cursos(id)
);
DESC aluno;

CREATE TABLE cursos (
	id INT AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
    CONSTRAINT cursos_pk PRIMARY KEY (id)
);
DESC curso;

CREATE TABLE disciplinas (
	id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    id_curso INT NOT NULL,
    CONSTRAINT disciplinas_pk PRIMARY KEY (id),
    CONSTRAINT disciplinas_id_curso_fk FOREIGN KEY (id_curso)
		REFERENCES cursos(id)
);
DESC disciplinas;

CREATE TABLE notas (
	id INT AUTO_INCREMENT,
    nota DECIMAL,
    matricula_aluno INT,
    id_disciplina INT,
    CONSTRAINT notas_pk PRIMARY KEY (id),
    CONSTRAINT notas_matricula_aluno_fk FOREIGN KEY (matricula_aluno)
		REFERENCES alunos(matricula),
	CONSTRAINT notas_id_disciplina_fk FOREIGN KEY (id_disciplina)
		REFERENCES disciplinas(id)
);

DESC notas;
 
INSERT INTO cursos (nome) VALUES ("Desenvolvimento de Sistemas"),("Automação Industrial"),("Eletrônica"),("Química");
 
SELECT * FROM cursos;

DELETE FROM cursos;

INSERT INTO alunos (matricula,nome,curso_id) VALUES (2019951988, "Bernardo Venancio",1);
SELECT * FROM alunos;

INSERT INTO disciplinas (nome,id_curso) VALUES ("DAW", 1);
INSERT INTO disciplinas (nome,id_curso) VALUES ("TP", 1);
INSERT INTO disciplinas (nome,id_curso) VALUES ("POO", 1);

SELECT * FROM disciplinas;
SELECT * FROM alunos;
INSERT INTO notas (nota, matricula_aluno, id_disciplina) VALUES (26, 2019951988,1);
SELECT * FROM notas;

SELECT a.nome, c.nome, d.nome, n.nota
FROM alunos a
JOIN cursos c ON a.curso_id = c.id
JOIN disciplinas d ON c.id = d.id_curso
LEFT JOIN notas n ON a.matricula = n.matricula_aluno AND d.id = n.id_disciplina;

