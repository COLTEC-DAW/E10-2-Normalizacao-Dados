USE escola;

insert into cursos(codigo, nome) values (0, "Design");
insert into cursos(codigo, nome) values (1, "Deenvolvimento de sistemas");
insert into cursos(codigo, nome) values (2, "Eletrônica");
insert into cursos(codigo, nome) values (3, "Automação industrial");

insert into disciplinas(codigo, nome) values (0, "Design de produtos");
insert into disciplinas(codigo, nome) values (1, "Desenvolvimento de produtos");
insert into disciplinas(codigo, nome) values (2, "Marketing");
insert into disciplinas(codigo, nome) values (3, "Desenvolvimento de aplicações web");
insert into disciplinas(codigo, nome) values (4, "Programação orientada a objetos");
insert into disciplinas(codigo, nome) values (5, "Sistemas operacionais");
insert into disciplinas(codigo, nome) values (6, "Empreendedorismo");
insert into disciplinas(codigo, nome) values (7, "Circuitos Digitais");
insert into disciplinas(codigo, nome) values (8, "Sistemas Embarcados");
insert into disciplinas(codigo, nome) values (9, "Domótica e Robótica");
insert into disciplinas(codigo, nome) values (10, "Empreendedorismo");
insert into disciplinas(codigo, nome) values (11, "Educação Física");

insert into alunos(codigo, matricula, nome, codigo_curso) values (0, 2018321098, "Iago", 0);
insert into alunos(codigo, matricula, nome, codigo_curso) values (1, 2021231202, "Gabriela", 1);
insert into alunos(codigo, matricula, nome, codigo_curso) values (2, 2193109187, "Jair", 2);
insert into alunos(codigo, matricula, nome, codigo_curso) values (3, 2012786310, "Cristina", 3);

insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (0, 0, 0, 100);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (1, 0, 1, 100);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (2, 0, 2, 100);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (3, 1, 3, 82);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (4, 1, 4, 93);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (5, 1, 5, 100);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (6, 1, 6, 100);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (7, 2, 7, 85);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (8, 2, 8, 100);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (9, 3, 9, 74);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (10, 3, 10, 93);
insert into notas(codigo, codigo_aluno, codigo_disciplina, nota) values (11, 3, 11, 95);

insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (0, 0, 0);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (1, 0, 1);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (2, 0, 2);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (3, 1, 3);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (4, 1, 4);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (5, 1, 5);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (6, 1, 6);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (7, 2, 7);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (8, 2, 8);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (9, 3, 9);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (10, 3, 10);
insert into disciplinas_cursos(codigo, codigo_curso, codigo_disciplina) values (11, 3, 11);