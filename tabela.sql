SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

CREATE TABLE Curso(
	Codigo INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,

    CONSTRAINT curso_pk PRIMARY KEY (Codigo)
);

CREATE TABLE Curso_disciplina(
	Codigo INT NOT NULL,
    Codigo_disciplina INT NOT NULL,
	Codigo_curso INT NOT NULL,

	CONSTRAINT cd_pk PRIMARY KEY (Id),
        CONSTRAINT cd_Id_curso_fk FOREIGN KEY (Id_curso) REFERENCES Curso(Id),
        CONSTRAINT cd_Id_disciplina_fk FOREIGN KEY (Id_disciplina) REFERENCES Disciplina(Id)
);

CREATE TABLE Nota(
	Codigo INT NOT NULL,
    Nota FLOAT NOT NULL,
    Codigo_disciplina INT NOT NULL,
    Codigo_aluno INT NOT NULL,

    CONSTRAINT n_pk PRIMARY KEY (Codigo),
	    CONSTRAINT n_Codigo_disciplina_fk FOREIGN KEY (Codigo_disciplina) REFERENCES Disciplina(Codigo),
        CONSTRAINT n_Codigo_aluno_fk FOREIGN KEY (Codigo_aluno) REFERENCES Aluno(Codigo) 
); 

CREATE TABLE Aluno(
	Codigo INT NOT NULL,
    Codigo_Curso INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    Matricula VARCHAR(45) NOT NULL,

    CONSTRAINT a_pk PRIMARY KEY (Id),
        CONSTRAINT a_Codigo_curso_fk FOREIGN KEY (Codigo_curso) REFERENCES Curso(Codigo)
);

CREATE TABLE Disciplina(
	Codigo INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,

    CONSTRAINT d_pk PRIMARY KEY (Codigo)
);