-- Criação do Database
CREATE SCHEMA `DataNormal`;

-- Selecionando o Database
USE `DataNormal`;

-- Criação da tabela das disciplinas
CREATE TABLE disciplinas(
	Id INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    
    CONSTRAINT disciplinas_pk PRIMARY KEY (Id)
);

-- Criação da tabela dos cursos
CREATE TABLE cursos(
	Id INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    
    CONSTRAINT cursos_pk PRIMARY KEY (Id)
);

-- Criação da tabela que relaciona as disciplinas e os cursos
CREATE TABLE disciplinas_curso(
	Id INT NOT NULL,
    Id_disciplina INT NOT NULL,
	Id_curso INT NOT NULL,

	CONSTRAINT disciplinas_curso_pk PRIMARY KEY (Id),
    CONSTRAINT disciplinas_curso_Id_curso_fk FOREIGN KEY (Id_curso) REFERENCES cursos(Id),
    CONSTRAINT disciplinas_curso_Id_disciplina_fk FOREIGN KEY (Id_disciplina) REFERENCES disciplinas(Id)
);

-- Criação da tabela de alunos
CREATE TABLE alunos(
	Id INT NOT NULL,
    Matricula VARCHAR(45) NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    Id_Curso INT NOT NULL,
    
    CONSTRAINT alunos_pk PRIMARY KEY (Id),
    CONSTRAINT alunos_Id_curso_fk FOREIGN KEY (Id_curso) REFERENCES cursos(Id)
);

-- Criação da tabela das notas
CREATE TABLE notas(
	Id INT NOT NULL,
    Nota FLOAT NOT NULL,
    Id_disciplina INT NOT NULL,
    Id_aluno INT NOT NULL,
    
    CONSTRAINT notas_pk PRIMARY KEY (Id),
	CONSTRAINT notas_Id_disciplina_fk FOREIGN KEY (Id_disciplina) REFERENCES disciplinas(Id),
    CONSTRAINT notas_Id_aluno_fk FOREIGN KEY (Id_aluno) REFERENCES alunos(Id) 
);