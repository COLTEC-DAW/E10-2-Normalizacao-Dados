use Escola;

/*inserindo cursos*/
insert into curso (nome) values ('Design');
insert into curso (nome) values ('Eletrônica');
insert into curso (nome) values ('Desenvolvimento de sistemas');
insert into curso (nome) values ('Automação');

/*Inserindo disciplinas*/
insert into disciplina( nome) values ( "Design de produtos");
insert into disciplina( nome) values ( "Desenvolvimento de Aplicacoes Web");
insert into disciplina( nome) values ( "Circuitos Digitais");
insert into disciplina( nome) values ( "Domótica e Robótica");
insert into disciplina( nome) values ( "Desenvolvimento de Produtos");
insert into disciplina( nome) values ( "Programacao Orientada a Objetos");
insert into disciplina( nome) values ( "Sistemas Embarcados");
insert into disciplina( nome) values ( "Empreendedorismo");
insert into disciplina( nome) values ( "Marketing");
insert into disciplina( nome) values ( "Sistemas operacionais");
insert into disciplina( nome) values ( "Educação Física");

/*Inserindo alunos*/

insert into aluno(matricula, nome, id_curso) values (2018321098, "Iago", 01);
insert into aluno(matricula, nome, id_curso) values (2021231202, "Gabriela", 02);
insert into aluno(matricula, nome, id_curso) values (2012786310, "Cristina", 04);
insert into aluno(matricula, nome, id_curso) values (2020198764, "Jair", 03);

/*inserindo notas*/

/*notas do iago*/
insert into notas (id_aluno, id_disciplina, notas) values (01, 02, 100);
insert into notas (id_aluno, id_disciplina, notas) values (01, 05, 100);
insert into notas (id_aluno, id_disciplina, notas) values (01, 09, 100);

/*notas da Gabriela*/
insert into notas (id_aluno, id_disciplina, notas) values (02, 01, 82);
insert into notas (id_aluno, id_disciplina, notas) values (02, 06, 93);
insert into notas (id_aluno, id_disciplina, notas) values (02, 10, 100);
insert into notas (id_aluno, id_disciplina, notas) values (02, 08, 100);


/*Notas da cristina*/
insert into notas (id_aluno, id_disciplina, notas) values (03, 04, 74);
insert into notas (id_aluno, id_disciplina, notas) values (03, 08, 93);
insert into notas (id_aluno, id_disciplina, notas) values (03, 11, 95);

/*Notas do Jair*/

insert into notas (id_aluno, id_disciplina, notas) values (04, 03, 85);
insert into notas (id_aluno, id_disciplina, notas) values (04, 07, 100);


/*Relacionando Cursos e Disciplinas*/
insert into disciplinaCurso (id_curso, id_disciplina) values (01, 02);
insert into disciplinaCurso (id_curso, id_disciplina) values (01, 05);
insert into disciplinaCurso (id_curso, id_disciplina) values (01, 09);

insert into disciplinaCurso (id_curso, id_disciplina) values (02, 03);
insert into disciplinaCurso (id_curso, id_disciplina) values (02, 07);


insert into disciplinaCurso (id_curso, id_disciplina) values (03, 01);
insert into disciplinaCurso (id_curso, id_disciplina) values (03, 06);
insert into disciplinaCurso (id_curso, id_disciplina) values (03, 10);
insert into disciplinaCurso (id_curso, id_disciplina) values (03, 08);

insert into disciplinaCurso (id_curso, id_disciplina) values (04, 04);
insert into disciplinaCurso (id_curso, id_disciplina) values (04, 08);
insert into disciplinaCurso (id_curso, id_disciplina) values (04, 11);





















