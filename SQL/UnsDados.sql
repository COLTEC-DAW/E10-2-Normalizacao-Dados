INSERT INTO curso(Id,Nome) VALUE(0,'design');
INSERT INTO curso(Id,Nome) VALUE(1,'desenvolvimento de sistemas');
INSERT INTO curso(Id,Nome) VALUE(2,'eletrônica');
INSERT INTO curso(Id,Nome) VALUE(3,'automação industrial');

INSERT INTO aluno(Id,Matricula,Nome,Id_curso) VALUE(0,'2018321098','Iago',0);
INSERT INTO aluno(Id,Matricula,Nome,Id_curso) VALUE(1,'2021231202','Gabriela',1);
INSERT INTO aluno(Id,Matricula,Nome,Id_curso) VALUE(2,'2193109187','Jair',2);
INSERT INTO aluno(Id,Matricula,Nome,Id_curso) VALUE(3,'2012786310','Cristina',3);

INSERT INTO disciplina(Id,Nome) VALUE(0,'Design de Produtos');
INSERT INTO disciplina(Id,Nome) VALUE(1,'Desenvolvimento de Aplicacoes Web');
INSERT INTO disciplina(Id,Nome) VALUE(2,'Circuitos Digitais ');
INSERT INTO disciplina(Id,Nome) VALUE(3,'Domótica e Robótica');
INSERT INTO disciplina(Id,Nome) VALUE(4,'Desenvolvimento de Produtos');
INSERT INTO disciplina(Id,Nome) VALUE(5,'Programacao Orientada a Objetos');
INSERT INTO disciplina(Id,Nome) VALUE(6,'Sistemas Embarcados ');
INSERT INTO disciplina(Id,Nome) VALUE(7,'Empreendendorismo');
INSERT INTO disciplina(Id,Nome) VALUE(8,'Marketing');
INSERT INTO disciplina(Id,Nome) VALUE(9,'Sistemas operacionais');
INSERT INTO disciplina(Id,Nome) VALUE(10,'Educação Física');

INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(0,0,0);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(1,4,0);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(2,8,0);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(3,1,1);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(4,5,1);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(5,9,1);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(6,7,1);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(7,2,2);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(8,6,2);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(9,3,3);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(10,7,3);
INSERT INTO curso_disciplina(Id,Id_disciplina,Id_curso) VALUE(11,10,3);

INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(0,100,0,0);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(1,100,4,0);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(2,100,8,0);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(3,82,1,1);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(4,93,5,1);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(5,100,9,1);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(6,100,7,1);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(7,85,2,2);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(8,100,6,2);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(9,74,3,3);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(10,93,7,3);
INSERT INTO nota(Id,Nota,Id_disciplina,Id_aluno) VALUE(11,95,10,3);