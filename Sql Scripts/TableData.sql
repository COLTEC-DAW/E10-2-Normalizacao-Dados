-- Selecionando o Database
USE `DataNormal`;

-- Inserindo os cursos
INSERT INTO cursos(Id,Nome) VALUE(0,'Design');
INSERT INTO cursos(Id,Nome) VALUE(1,'Desenvolvimento de sistemas');
INSERT INTO cursos(Id,Nome) VALUE(2,'Eletrônica');
INSERT INTO cursos(Id,Nome) VALUE(3,'Automação Industrial');

-- Inserindo os alunos
INSERT INTO alunos(Id,Matricula,Nome,Id_curso) VALUE(0,'2018321098','Iago',0);
INSERT INTO alunos(Id,Matricula,Nome,Id_curso) VALUE(1,'2021231202','Gabriela',1);
INSERT INTO alunos(Id,Matricula,Nome,Id_curso) VALUE(2,'2193109187','Jair',2);
INSERT INTO alunos(Id,Matricula,Nome,Id_curso) VALUE(3,'2012786310','Cristina',3);

-- Inserindo as disciplinas
INSERT INTO disciplinas(Id,Nome) VALUE(0,'Design de Produtos');
INSERT INTO disciplinas(Id,Nome) VALUE(1,'Desenvolvimento de Aplicacoes Web');
INSERT INTO disciplinas(Id,Nome) VALUE(2,'Circuitos Digitais ');
INSERT INTO disciplinas(Id,Nome) VALUE(3,'Domótica e Robótica');
INSERT INTO disciplinas(Id,Nome) VALUE(4,'Desenvolvimento de Produtos');
INSERT INTO disciplinas(Id,Nome) VALUE(5,'Programacao Orientada a Objetos');
INSERT INTO disciplinas(Id,Nome) VALUE(6,'Sistemas Embarcados ');
INSERT INTO disciplinas(Id,Nome) VALUE(7,'Empreendendorismo');
INSERT INTO disciplinas(Id,Nome) VALUE(8,'Marketing');
INSERT INTO disciplinas(Id,Nome) VALUE(9,'Sistemas operacionais');
INSERT INTO disciplinas(Id,Nome) VALUE(10,'Educação Física');

-- Inserindo as notas
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(0,100,0,0);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(1,100,4,0);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(2,100,8,0);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(3,82,1,1);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(4,93,5,1);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(5,100,9,1);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(6,100,7,1);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(7,85,2,2);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(8,100,6,2);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(9,74,3,3);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(10,93,7,3);
INSERT INTO notas(Id,Nota,Id_disciplina,Id_aluno) VALUE(11,95,10,3);

-- Inserindo a relação entre as disciplinas e os cursos
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(0,0,0);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(1,4,0);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(2,8,0);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(3,1,1);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(4,5,1);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(5,9,1);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(6,7,1);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(7,2,2);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(8,6,2);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(9,3,3);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(10,7,3);
INSERT INTO disciplinas_curso(Id,Id_disciplina,Id_curso) VALUE(11,10,3);
