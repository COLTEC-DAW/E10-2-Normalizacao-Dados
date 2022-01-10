-- Insere cursos
INSERT INTO cursos(id_curso, nome) VALUES (1, "Design");
INSERT INTO cursos(id_curso, nome) VALUES (2, "Desenvolvimento de sistemas");
INSERT INTO cursos(id_curso, nome) VALUES (3, "Eletrônica");
INSERT INTO cursos(id_curso, nome) VALUES (4, "Automação Industrial");

-- Insere alunos
INSERT INTO alunos(id_aluno,matricula, nome, id_curso)
VALUES (1,2018321098, "Iago", 1);
INSERT INTO alunos(id_aluno,matricula, nome, id_curso)
VALUES (2,2021231202, "Gabriela", 2);
INSERT INTO alunos(id_aluno,matricula, nome, id_curso)
VALUES (3,2193109187, "Jair", 3);
INSERT INTO alunos(id_aluno,matricula, nome, id_curso)
VALUES (4,2012786310, "Cristina", 4);

-- Insere disciplinas
INSERT INTO disciplinas(id_disciplina,nome) VALUES(1,'Design de Produtos');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(2,'Desenvolvimento de Aplicacoes Web');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(3,'Circuitos Digitais ');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(4,'Domótica e Robótica');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(5,'Desenvolvimento de Produtos');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(6,'Programacao Orientada a Objetos');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(7,'Sistemas Embarcados ');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(8,'Empreendendorismo');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(9,'Marketing');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(10,'Sistemas operacionais');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(11,'Educação Física');
INSERT INTO disciplinas(id_disciplina,nome) VALUES(12,'Empreendendorismo');

-- Insere notas
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (1,1,1,1,100);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (2,1,2,5,100);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (3,1,3,9,100);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (4,2,4,2,82);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (5,2,1,6,93);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (6,2,2,10,100);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (7,2,3,8,100);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (8,3,4,3,85);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (9,3,1,7,100);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (10,4,2,4,74);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (11,4,4,12,93);
INSERT INTO notas(id_notas, id_aluno,id_curso,id_disciplina,notas) VALUES (12,4,1,11,95);

-- Insere disciplinas por curso
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (1,1,1);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (2,1,5);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (3,1,9);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (4,2,2);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (5,2,6);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (6,2,10);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (7,2,8);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (8,3,3);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (9,3,7);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (10,4,4);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (11,4,12);
INSERT INTO disciplinas_curso(id_disciplinas_curso,id_curso,id_disciplina) VALUES (12,4,11);

