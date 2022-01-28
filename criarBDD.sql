CREATE DATABASE daw;
USE daw;

CREATE TABLE cursos (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
  
  PRIMARY KEY (id)
  );
  
CREATE TABLE alunos (
	matricula VARCHAR(10) NOT NULL,
    nome VARCHAR(45) NOT NULL,
	id_curso INT NOT NULL,
	PRIMARY KEY (matricula),
  
	CONSTRAINT alunos_cursos_fk FOREIGN KEY (id_curso)
		REFERENCES cursos (id)
);

CREATE TABLE disciplinas (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
    
	PRIMARY KEY (id)
);

CREATE TABLE disciplinas_cursos (
	id INT NOT NULL AUTO_INCREMENT,
	id_curso INT NOT NULL,
	id_disciplina INT NOT NULL,
    
	PRIMARY KEY (id),
  
	CONSTRAINT dc_cursos_fk FOREIGN KEY (id_curso)
		REFERENCES cursos (id),
   
	CONSTRAINT dc_disciplina_fk FOREIGN KEY (id_disciplina)
		REFERENCES disciplinas (id)
);
    
CREATE TABLE notas (
	id INT NOT NULL AUTO_INCREMENT,
	matricula_aluno VARCHAR(10) NOT NULL,
	id_disciplina INT NOT NULL,
	nota INT NOT NULL,
    
	PRIMARY KEY (id),
    
	CONSTRAINT notas_alunos_fk FOREIGN KEY (matricula_aluno)
		REFERENCES alunos (matricula),
    
	CONSTRAINT notas_disciplinas FOREIGN KEY (id_disciplina)
		REFERENCES disciplinas (id)
);

