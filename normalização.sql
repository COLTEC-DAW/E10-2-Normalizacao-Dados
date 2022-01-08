CREATE TABLE curso (
	matricula INT NOT NULL,
    idcurso INT NOT NULL,
    curso VARCHAR(55) NOT NULL,
    CONSTRAINT PRIMARY KEY (idcurso)
);

CREATE TABLE aluno (
	matricula INT NOT NULL,
    idcurso INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    CONSTRAINT PRIMARY KEY (matricula),
    CONSTRAINT curso_idcurso FOREIGN KEY (idcurso)
    REFERENCES curso (idcurso)
);

CREATE TABLE Notas (
	idNotas INT,
    nota_1 INT,
    nota_2 INT,
	nota_3 INT,
    nota_4 INT,
    CONSTRAINT PRIMARY KEY (idNotas),
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Disciplina (
	idDisciplina INT NOT NULL,
    idNotas INT NOT NULL,
    idcurso INT NOT NULL,
    nome VARCHAR(100),
    disciplina_1 VARCHAR(55),
    disciplina_2 VARCHAR(55),
    disciplina_3 VARCHAR(55),
    disciplina_4 VARCHAR(55),
    CONSTRAINT PRIMARY KEY (idDisciplina),
    CONSTRAINT Notas_idNotas FOREIGN KEY (idNotas)
    REFERENCES Notas (idNotas),
    CONSTRAINT curso_idcotas FOREIGN KEY (idcurso)
    REFERENCES curso (idcurso),
    nome VARCHAR(100) NOT NULL
);

INSERT INTO curso (matricula, idcurso, curso) VALUES (2021231202, 0, 'Desenvolvimento de sistemas');
INSERT INTO curso (matricula, idcurso, curso) VALUES (2018321098, 1, 'Design');
INSERT INTO curso (matricula, idcurso, curso) VALUES (2147483647, 2, 'Eletrônica');
INSERT INTO curso (matricula, idcurso, curso) VALUES (2012786310, 3, 'Automação Industrial');

INSERT INTO aluno (matricula, idcurso, nome) VALUES (2021231202, 0, 'Gabriela');
INSERT INTO aluno (matricula, idcurso, nome) VALUES (2018321098, 1, 'Iago');
INSERT INTO aluno (matricula, idcurso, nome) VALUES (2147483647, 2, 'Jair');
INSERT INTO aluno (matricula, idcurso, nome) VALUES (2012786310, 3, 'Cristina');

INSERT INTO Notas (idNotas, nota_1, nota_2, nota_3, nota_4, nome) VALUES (0, 82, 93, 100, 100, 'Gabriela');
INSERT INTO Notas (idNotas, nota_1, nota_2, nota_3, nome) VALUES (1, 100, 100, 100, 'Iago');
INSERT INTO Notas (idNotas, nota_1, nota_2, nome) VALUES (2, 85, 100, 'Jair');
INSERT INTO Notas (idNotas, nota_1, nota_2, nota_3, nome) VALUES (3, 74, 93, 95, 'Cristina');

INSERT INTO Disciplina (idDisciplina, idNotas, idcurso, disciplina_1, disciplina_2, disciplina_3, disciplina_4, nome) VALUES (0, 0, 0, 'Desenvolvimento de Aplicações Web', 'Programação Orientada a Objetos', 'Sistemas Operacionais',
'Empreendedorismo', 'Gabriela');
INSERT INTO Disciplina (idDisciplina, idNotas, idcurso, disciplina_1, disciplina_2, disciplina_3, nome) VALUES (1, 1, 1, 'Design de Produtos', 'Desenvolvimento de Produtos', 'Marketing', 'Iago');
INSERT INTO Disciplina (idDisciplina, idNotas, idcurso, disciplina_1, disciplina_2, nome) VALUES (2, 2, 2, 'Circuitos Digitais', 'Sistemas Embarcados', 'Jair');
INSERT INTO Disciplina (idDisciplina, idNotas, idcurso, disciplina_1, disciplina_2, disciplina_3, nome) VALUES (3, 3, 3, 'Automação Industrial', 'Domótica e Robótica', 'Educação Física', 'Cristina');

SELECT * FROM curso;
SELECT * FROM aluno ORDER BY idcurso;
SELECT * FROM Disciplina;
SELECT * FROM Notas;