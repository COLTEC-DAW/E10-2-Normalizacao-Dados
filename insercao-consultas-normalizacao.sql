INSERT INTO cursos(id, curso) VALUES (0, "Design");
INSERT INTO cursos(id, curso) VALUES (1, "Desenvolvimento de sistemas");
INSERT INTO cursos(id, curso) VALUES (2, "Eletrônica");
INSERT INTO cursos(id, curso) VALUES (3, "Automação Industrial");

INSERT INTO alunos(matricula, nome, id_curso)
VALUES (2018321098, "Iago", 0);
INSERT INTO alunos(matricula, nome, id_curso)
VALUES (2021231202, "Gabriela", 1);
INSERT INTO alunos(matricula, nome, id_curso)
VALUES (2193109187, "Jair", 2);
INSERT INTO alunos(matricula, nome, id_curso)
VALUES (2012786310, "Cristina", 3);

INSERT INTO disciplinas(id, nome, id_curso) VALUES (0, "Design de Produtos", 0);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (1, "Desenvolvimento de Produtos", 0);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (2, "Marketing", 0);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (3, "Desenvolvimento de Aplicacoes Web", 1);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (4, "Programacao Orientada a Objetos", 1);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (5, "Sistemas operacionais", 1);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (6, "Empreendedorismo", 1);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (7, "Circuitos Digitais", 2);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (8, "Sistemas Embaracados", 2);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (9, "Domótica e Robótica", 3);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (10, "Empreendedorismo", 3);
INSERT INTO disciplinas(id, nome, id_curso) VALUES (11, "Educação Física", 3);

-- Notas - Iago
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2018321098, 0, 100);
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2018321098, 1, 100);
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2018321098, 2, 100);

-- Notas - Gabriela
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2021231202, 3, 82);
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2021231202, 4, 93);
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2021231202, 5, 100);
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2021231202, 6, 100);

-- Notas - Jair
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2193109187, 7, 85);
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2021231202, 8, 100);

-- Notas - Cristina
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2012786310, 9, 74);
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2012786310, 10, 93);
INSERT INTO notas(matricula_aluno, id_disciplina, nota) VALUES (2012786310, 11, 95);

-- Consultas nas tabelas:
SELECT * FROM alunos
ORDER BY id_curso;

SELECT * FROM cursos;

SELECT * FROM disciplinas;

SELECT * FROM notas
ORDER BY id_disciplina;