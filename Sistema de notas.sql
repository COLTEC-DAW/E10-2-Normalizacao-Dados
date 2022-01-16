use ESCOLA;

create table curso(
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id),
    nome varchar(60)
);

create table disciplina(
	id int not null auto_increment,
    PRIMARY KEY (id),
    nome varchar(60)
);

create table aluno(
	id int not null auto_increment,
    primary key(id),
    matricula int not null,
    nome varchar(60)
);

alter table aluno
add id_curso int not null;

alter table aluno
ADD CONSTRAINT aluno_id_curso_fk Foreign KEY(id_curso) references curso (id);


create table Notas(
	id int not null auto_increment,
    primary key(id),
    id_aluno int not null,
    id_disciplina int not null,
    notas int,
    
    constraint notas_id_aluno_fk foreign key (id_aluno) references aluno(id),
    constraint notas_id_discplina_fk foreign key (id_disciplina) references disciplina(id)
);

create table disciplinaCurso(
	id int not null auto_increment,
    primary key(id),
    id_curso int not null,
    id_disciplina int not null,

    constraint disciplinaCurso_id_curso_fk foreign key (id_curso) references curso(id),
	constraint disciplinaCurso_id_discplina_fk foreign key (id_disciplina) references disciplina(id)
    
);


