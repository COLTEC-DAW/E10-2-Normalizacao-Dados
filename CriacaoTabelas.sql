create database sistemaescolar;
use sistemaescolar;

create table alunos(
	matricula INT NOT NULL,
    nome_aluno VARCHAR(30) NOT NULL,
    id_curso INT NOT NULL,

    constraint alunos_pk primary key(matricula),
    constraint alunos_cursos_fk foreign key (id_curso) references cursos(id_curso)
);

create table cursos(
	id_curso INT NOT NULL,
    nome_curso VARCHAR(40) NOT NULL,

    constraint cursos_pk primary key (id_curso)
);

create table disciplinas(
	id_disciplina INT,
    nome_disciplina VARCHAR(50) NOT NULL,

    constraint disciplinas_pk primary key(id_disciplina)
);

create table notas(
    id_nota INT NOT NULL ,
    id_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,
    nota DECIMAL(3,2) NOT NULL,

    constraint notas_pk primary key (id_nota), 
	constraint id_disciplina foreign key (id_disciplina)
		    references disciplinas(id_disciplina)
        constraint id_curso foreign key (id_curso)
		    references cursos(id_curso)
        constraint id_aluno foreign key (id_aluno)
		    references alunos(id_aluno)
); 
create table disciplinas_curso(
    id_disciplinacurso INT NOT NULL,
    id_curso INT NOT NULL,
    id_disciplina INT NOT NULL,

    constraint disciplinas_curso_pk primary key (id_disciplinacurso), 
	constraint id_disciplina foreign key (id_disciplina) references disciplinas(id_disciplina)
    constraint id_curso foreign key (id_curso) references cursos(id_curso)
);  