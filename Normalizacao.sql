USE TODOLIST;

/*criação das tabelas*/
CREATE TABLE alunos(
	matricula INT,
    nome VARCHAR(45) NOT NULL,
    curso_id INT NOT NULL,
    
    CONSTRAINT alunos_pk PRIMARY KEY(matricula),
    CONSTRAINT cursos_fk FOREIGN KEY(curso_id)
		REFERENCES cursos(id)
);

CREATE TABLE cursos(
	id INT,
    nome VARCHAR(45) NOT NULL UNIQUE,
    
    CONSTRAINT cursos_pk PRIMARY KEY(id)
);

CREATE TABLE disciplinas(
	id INT,
    nome VARCHAR(45) NOT NULL,
    curso_id INT NOT NULL,
    
    CONSTRAINT disciplinas_pk PRIMARY KEY(id),
    CONSTRAINT cursos_fk_D FOREIGN KEY(curso_id)
		REFERENCES cursos(id)
);

CREATE TABLE notas(
	id INT,
    aluno_matricula INT NOT NULL,
    disciplina_id INT NOT NULL,
    nota INT,
    
    CONSTRAINT notas_pk PRIMARY KEY(id),
    CONSTRAINT alunos_fk FOREIGN KEY(aluno_matricula)
		REFERENCES alunos(matricula),
	CONSTRAINT disciplinas_fk FOREIGN KEY(disciplina_id)
		REFERENCES disciplinas(id)
);

/*inserção de dados*/

/*Cursos*/
INSERT INTO cursos(id,nome)
	VALUES(0,"Design de Produtos");
INSERT INTO cursos(id,nome)
	VALUES(1,"Desenvolvimento de Sistemas");
INSERT INTO cursos(id,nome)
	VALUES(2,"Eletrônica");
INSERT INTO cursos(id,nome)
	VALUES(3,"Automação Industrial");

/*Alunos*/
INSERT INTO alunos(matricula,nome,curso_id)
	VALUES(2018321098,"Iago",0);
INSERT INTO alunos(matricula,nome,curso_id)
	VALUES(2021231202,"Gabriela",1);
INSERT INTO alunos(matricula,nome,curso_id)
	VALUES(2193109187,"Jair",2);
INSERT INTO alunos(matricula,nome,curso_id)
	VALUES(2012786310,"Cristina",3);

/*Disciplinas*/
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(0,"Design",0);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(1,"Desenvolvimento de Produtos",0);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(2,"Marketing",0);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(3,"Desenvolvimento de Aplicativos Web",1);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(4,"Programação Orientada a Objetos",1);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(5,"Sistemas Operacionais",1);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(6,"Empreendorismo",1);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(7,"Circuitos Digitais",2);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(8,"Sistemas Embarcados",2);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(9,"Domotica e Robótica",3);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(10,"Empreendorismo",3);
INSERT INTO disciplinas(id,nome,curso_id)
	VALUES(11,"Educação Física",3);
    
/*Notas*/
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(0,2018321098,0,100);
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(1,2018321098,1,100);
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(2,2018321098,2,100);
    
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(3,2021231202,3,82);
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(4,2021231202,4,93);
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(5,2021231202,5,100);
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(6,2021231202,6,100);
    
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(7,2193109187,7,85);
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(8,2193109187,8,100);
    
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(9,2012786310,9,74);
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(10,2012786310,10,93);
INSERT INTO notas(id,aluno_matricula,disciplina_id,nota)
	VALUES(11,2012786310,11,95);
    
/*1ª Forma*/
SELECT a.matricula, a.nome, c.nome AS cursos, d.nome AS disciplinas, n.nota AS notas
FROM alunos a
JOIN cursos c ON a.curso_id = c.id
LEFT JOIN notas n ON a.matricula = n.aluno_matricula
LEFT JOIN disciplinas d ON n.disciplina_id = d.id;

/*2ª Forma*/
SELECT a.matricula, a.nome, c.nome AS cursos
FROM alunos a
JOIN cursos c ON a.curso_id = c.id;

SELECT a.matricula, d.nome AS disciplinas, n.nota AS notas
FROM alunos a
LEFT JOIN notas n ON a.matricula = n.aluno_matricula
LEFT JOIN disciplinas d ON n.disciplina_id = d.id;

/*3ª Forma*/

SELECT a.matricula, a.nome
FROM alunos a;

SELECT a.matricula, d.nome AS disciplinas, n.nota AS notas
FROM alunos a
LEFT JOIN notas n ON a.matricula = n.aluno_matricula
LEFT JOIN disciplinas d ON n.disciplina_id = d.id;

SELECT d.nome, c.nome AS cursos
FROM disciplinas d
LEFT JOIN cursos c ON d.curso_id = c.id;