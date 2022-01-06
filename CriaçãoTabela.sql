drop database BANCOCOLTEC;

-- Criação do Database
CREATE database BANCOCOLTEC;
USE BANCOCOLTEC;

-- Criando os cursos
CREATE TABLE cursos(
	Id INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,

    CONSTRAINT cursos_pk PRIMARY KEY (Id)
);

-- Criando as disciplinas
CREATE TABLE disciplinas(
	Id INT NOT NULL,
    Id_curso INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,

    CONSTRAINT disciplinas_pk PRIMARY KEY (Id),
	CONSTRAINT disciplinas_cursos_fk FOREIGN KEY (Id_curso)
		REFERENCES cursos(Id)
);




-- Criação da tabela de alunos
CREATE TABLE alunos(
    Matricula INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    Id_Curso INT NOT NULL,

    CONSTRAINT alunos_pk PRIMARY KEY (Matricula),
    CONSTRAINT alunos_Id_curso_fk FOREIGN KEY (Id_curso) REFERENCES cursos(Id)
);

-- Criação da tabela das notas
CREATE TABLE notas(
	Id INT NOT NULL,
	Matricula_Aluno INT NOT NULL,
    Id_disciplina INT NOT NULL,
	Nota FLOAT NOT NULL,

    CONSTRAINT notas_pk PRIMARY KEY (Id),
	CONSTRAINT notas_Id_disciplina_fk FOREIGN KEY (Id_disciplina) REFERENCES disciplinas(Id),
    CONSTRAINT notas_alunos_fk FOREIGN KEY (Matricula_Aluno) REFERENCES alunos(Matricula) 
);
