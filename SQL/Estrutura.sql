-- Professor, eu não sabia se precisava criar o database no código também aí deixei sem
-- Na atividade era pra tirar print só dos diagramas os também do excel? Vi gente colocando os dois lá =/
USE `ExsNormalizacao`;

CREATE TABLE disciplina(
	Id INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    
    CONSTRAINT d_pk PRIMARY KEY (Id)
);

CREATE TABLE curso(
	Id INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    
    CONSTRAINT curso_pk PRIMARY KEY (Id)
);

CREATE TABLE curso_disciplina(
	Id INT NOT NULL,
    Id_disciplina INT NOT NULL,
	Id_curso INT NOT NULL,

	CONSTRAINT cd_pk PRIMARY KEY (Id),
    CONSTRAINT cd_Id_curso_fk FOREIGN KEY (Id_curso) REFERENCES curso(Id),
    CONSTRAINT cd_Id_disciplina_fk FOREIGN KEY (Id_disciplina) REFERENCES disciplina(Id)
);

CREATE TABLE aluno(
	Id INT NOT NULL,
    Id_Curso INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    Matricula VARCHAR(45) NOT NULL,
    
    CONSTRAINT a_pk PRIMARY KEY (Id),
    CONSTRAINT a_Id_curso_fk FOREIGN KEY (Id_curso) REFERENCES curso(Id)
);

CREATE TABLE nota(
	Id INT NOT NULL,
    Nota FLOAT NOT NULL,
    Id_disciplina INT NOT NULL,
    Id_aluno INT NOT NULL,
    
    CONSTRAINT n_pk PRIMARY KEY (Id),
	CONSTRAINT n_Id_disciplina_fk FOREIGN KEY (Id_disciplina) REFERENCES disciplina(Id),
    CONSTRAINT n_Id_aluno_fk FOREIGN KEY (Id_aluno) REFERENCES aluno(Id) 
);