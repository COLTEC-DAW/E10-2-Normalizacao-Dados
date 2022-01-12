-- inserindo cursos
INSERT INTO Curso(Codigo,Nome) VALUES(0,'design');
INSERT INTO Curso(Codigo,Nome) VALUES(1,'desenvolvimento de sistemas');
INSERT INTO Curso(Codigo,Nome) VALUES(2,'eletrônica');
INSERT INTO Curso(Codigo,Nome) VALUES(3,'automação industrial');

-- inserindo alunos
INSERT INTO Aluno(Codigo,Matricula,Nome,Codigo_curso) VALUES(3,'2012786310','Cristina',3);
INSERT INTO Aluno(Codigo,Matricula,Nome,Codigo_curso) VALUES(2,'2193109187','Jair',2);
INSERT INTO Aluno(Codigo,Matricula,Nome,Codigo_curso) VALUES(1,'2021231202','Gabriela',1);
INSERT INTO Aluno(Codigo,Matricula,Nome,Codigo_curso) VALUES(0,'2018321098','Iago',0);

-- inserindo disciplinas
INSERT INTO Disciplina(Codigo,Nome) VALUES(0,'Design de Produtos');
INSERT INTO Disciplina(Codigo,Nome) VALUES(1,'Desenvolvimento de Aplicacoes Web');
INSERT INTO Disciplina(Codigo,Nome) VALUES(2,'Circuitos Digitais ');
INSERT INTO Disciplina(Codigo,Nome) VALUES(3,'Domótica e Robótica');
INSERT INTO Disciplina(Codigo,Nome) VALUES(4,'Desenvolvimento de Produtos');
INSERT INTO Disciplina(Codigo,Nome) VALUES(5,'Programacao Orientada a Objetos');
INSERT INTO Disciplina(Codigo,Nome) VALUES(6,'Sistemas Embarcados ');
INSERT INTO Disciplina(Codigo,Nome) VALUES(7,'Empreendendorismo');
INSERT INTO Disciplina(Codigo,Nome) VALUES(8,'Marketing');
INSERT INTO Disciplina(Codigo,Nome) VALUES(9,'Sistemas operacionais');
INSERT INTO Disciplina(Codigo,Nome) VALUES(10,'Educação Física');

-- inserindo notas
INSERT INTO nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(0,100,0,0);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(1,100,4,0);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(2,100,8,0);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(3,82,1,1);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(4,93,5,1);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(5,100,9,1);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(6,100,7,1);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(7,85,2,2);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(8,100,6,2);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(9,74,3,3);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(10,93,7,3);
INSERT INTO Nota(Codigo,Nota,Codigo_disciplina,Codigo_aluno) VALUES(11,95,10,3);

-- inserindo cursos e disciplinas
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(0,0,0);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(1,4,0);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(2,8,0);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(3,1,1);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(4,5,1);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(5,9,1);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_Curso) VALUES(6,7,1);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(7,2,2);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(8,6,2);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(9,3,3);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(10,7,3);
INSERT INTO Curso_disciplina(Codigo,Codigo_disciplina,Codigo_curso) VALUES(11,10,3);

