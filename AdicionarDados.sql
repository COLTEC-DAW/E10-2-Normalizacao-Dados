
USE BANCOCOLTEC;

-- Cursos
INSERT INTO cursos(Id,Nome) VALUE(1,'Design');
INSERT INTO cursos(Id,Nome) VALUE(2,'Desenvolvimento de sistemas');
INSERT INTO cursos(Id,Nome) VALUE(3,'Eletrônica');
INSERT INTO cursos(Id,Nome) VALUE(4,'Automação Industrial');

-- Alunos
INSERT INTO alunos(Matricula,Nome,Id_curso) VALUE(2018321098,'Iago',1);
INSERT INTO alunos(Matricula,Nome,Id_curso) VALUE(2021231202,'Gabriela',2);
INSERT INTO alunos(Matricula,Nome,Id_curso) VALUE(2193109187,'Jair',3);
INSERT INTO alunos(Matricula,Nome,Id_curso) VALUE(2012786310,'Cristina',4);

-- Inserindo as disciplinas
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(1,1,'Design de Produtos');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(2,2,'Desenvolvimento de Aplicacoes Web');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(3,3,'Circuitos Digitais ');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(4,4,'Domótica e Robótica');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(5,1,'Desenvolvimento de Produtos');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(6,2,'Programacao Orientada a Objetos');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(7,3,'Sistemas Embarcados ');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(8,4,'Empreendendorismo');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(9,1,'Marketing');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(10,2,'Sistemas operacionais');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(11,4,'Educação Física');
INSERT INTO disciplinas(Id,	Id_curso,Nome) VALUE(12,2,'Empreendendorismo');

-- Inserindo as notas
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(1,2018321098,1,100);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(2,2018321098,5,100);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(3,2018321098,9,100);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(4,2021231202,2,82);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(5,2021231202,6,93);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(6,2021231202,10,100);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(7,2021231202,12,100);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(8,2193109187,3,85);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(9,2193109187,7,100);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(10,2012786310,4,74);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(11,2012786310,8,93);
INSERT INTO notas(Id,Matricula_Aluno,Id_disciplina,Nota) VALUE(12,2012786310,11,93);

SELECT a.Matricula,a.Nome,d.Nome AS Disciplina,n.Nota FROM alunos a
JOIN notas n ON n.Matricula_Aluno = a.Matricula
JOIN disciplinas d ON n.Id_disciplina = d.Id