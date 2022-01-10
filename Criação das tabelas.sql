USE escola;

create table cursos(
	codigo int not null,
    nome varchar(50) not null,
    
    constraint cursos_pk primary key (codigo)
);

create table disciplinas(
	codigo int not null,
    nome varchar(50) not null,
    
    constraint disciplinas_pk primary key (codigo)
);

create table alunos(
	codigo int not null,
    matricula int not null,
    nome varchar(50) not null,
    codigo_curso int not null,
    
    constraint alunos_pk primary key (codigo),
    constraint alunos_codigo_curso_fk foreign key (codigo_curso) references cursos(codigo)
);

create table notas(
	codigo int not null,
    codigo_aluno int not null,
    codigo_disciplina int not null,
    nota int not null,
    
    constraint notas_pk primary key (codigo),
    constraint notas_codigo_aluno_fk foreign key (codigo_aluno) references alunos(codigo),
    constraint notas_codigo_disciplina_fk foreign key (codigo_disciplina) references disciplinas(codigo)
);

create table disciplinas_cursos(
	codigo int not null,
    codigo_curso int not null,
    codigo_disciplina int not null,
    
    constraint disciplinas_cursos_pk primary key (codigo),
    constraint disciplinas_cursos_codigo_curso_fk foreign key (codigo_curso) references cursos(codigo),
    constraint disciplinas_cursos_codigo_disciplina_fk foreign key (codigo_disciplina) references disciplinas(codigo)
);