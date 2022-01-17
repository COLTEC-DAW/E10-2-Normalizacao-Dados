USE sistemaescolar;

-- CURSOS
INSERT INTO cursos(id_curso, nome_curso) 
VALUES (0, "Design");
INSERT INTO cursos(id_curso, nome_curso) 
VALUES (1, "Desenvolvimento de sistemas");
INSERT INTO cursos(id_curso, nome_curso) 
VALUES (2, "Eletronica");
INSERT INTO cursos(id_curso, nome_curso) 
VALUES (3, "Automacao Industrial");

-- ALUNOS
INSERT INTO alunos(id_aluno,matricula, nome_aluno, id_curso)
VALUES (0, 2018321098, "Iago", 0);
INSERT INTO alunos(id_aluno,matricula, nome_aluno, id_curso)
VALUES (1, 2021231202, "Gabriela", 1);
INSERT INTO alunos(id_aluno,matricula, nome_aluno, id_curso)
VALUES (2, 2193109187, "Jair", 2);
INSERT INTO alunos(id_aluno,matricula, nome_aluno, id_curso)
VALUES (3, 2012786310, "Cristina", 3);

-- DISCIPLINAS
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(0,'Design de Produtos');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(1,'Desenvolvimento de Pordutos');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(2,'Marketing');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(3,'Desenvolvimento de Aplicacoes Web');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(4,'Programacao Orientada a Objetos');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(5,'Sistemas Operacionais');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(6,'Empreendendorismo');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(7,'Circuitos Digitais');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(8,'Sistemas Embarcados');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(9,'Domótica e Robótica');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(10,'Empreendendorismo');
INSERT INTO disciplinas(id_disciplina, nome_disciplina) 
VALUES(11,'Educação Física');

-- NOTAS
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (0, 0, 0, 100);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (1, 0, 1, 100);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (2, 0, 2, 100);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (3, 1, 3, 82);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (4, 1, 4, 93);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (5, 1, 5, 100);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (6, 1, 6, 100);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (7, 2, 7, 85);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (8, 2, 8, 100);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (9, 3, 9, 74);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (10, 3, 10, 93);
INSERT INTO notas(id_nota, id_aluno, id_disciplina, nota) 
VALUES (11, 3, 11, 95);

-- DISCIPLINAS POR CURSO
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (0, 0, 0);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina)
VALUES (1, 0, 1);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (2, 0, 2);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (3, 1, 3);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (4, 1, 4);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (5, 1, 5);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (6, 1, 6);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (7, 2, 7);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (8, 2, 8);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (9, 3, 9);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (10, 3, 10);
INSERT INTO disciplinas_curso(id_disciplinacurso, id_curso, id_disciplina) 
VALUES (11, 3, 11);