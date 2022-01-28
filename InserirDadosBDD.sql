USE daw;

# Inserindo os cursos ##############
INSERT INTO cursos (nome) VALUES ('design');
INSERT INTO cursos (nome) VALUES ('desenvolvimento de sistemas');
INSERT INTO cursos (nome) VALUES ('eletrônica');
INSERT INTO cursos (nome) VALUES ('automação industrial');

# Inserindo os alunos ###############
INSERT INTO alunos (matricula, nome, id_curso) VALUES 
('2018321098','Iago', (SELECT id FROM cursos WHERE nome='design'));
INSERT INTO alunos (matricula, nome, id_curso) VALUES 
('2021231202','Gabriela', (SELECT id FROM cursos WHERE nome='desenvolvimento de sistemas'));
INSERT INTO alunos (matricula, nome, id_curso) VALUES 
('2193109187','Jair', (SELECT id FROM cursos WHERE nome='eletronica'));
INSERT INTO alunos (matricula, nome, id_curso) VALUES 
('2012786310','Cristina', (SELECT id FROM cursos WHERE nome='automação industrial'));

# Inserindo as disciplinas ################
INSERT INTO disciplinas (nome) VALUES ('Design de Produtos');
INSERT INTO disciplinas (nome) VALUES ('Desenvolvimento de Aplicacoes Web');
INSERT INTO disciplinas (nome) VALUES ('Circuitos Digitais');
INSERT INTO disciplinas (nome) VALUES ('Domótica e Robótica');
INSERT INTO disciplinas (nome) VALUES ('Desenvolvimento de Produtos');
INSERT INTO disciplinas (nome) VALUES ('Programacao Orientada a Objetos');
INSERT INTO disciplinas (nome) VALUES ('Sistemas Embarcados');
INSERT INTO disciplinas (nome) VALUES ('Empreendendorismo');
INSERT INTO disciplinas (nome) VALUES ('Marketing');
INSERT INTO disciplinas (nome) VALUES ('Sistemas operacionais');
INSERT INTO disciplinas (nome) VALUES ('Educação Física');

# Inserindo a relação disciplinas-cursos ##################
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=1),(SELECT id FROM disciplinas WHERE id=1));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=1),(SELECT id FROM disciplinas WHERE id=5));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=1),(SELECT id FROM disciplinas WHERE id=9));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=2),(SELECT id FROM disciplinas WHERE id=2));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=2),(SELECT id FROM disciplinas WHERE id=6));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=2),(SELECT id FROM disciplinas WHERE id=10));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=2),(SELECT id FROM disciplinas WHERE id=8));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=3),(SELECT id FROM disciplinas WHERE id=3));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=3),(SELECT id FROM disciplinas WHERE id=7));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=4),(SELECT id FROM disciplinas WHERE id=4));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=4),(SELECT id FROM disciplinas WHERE id=8));
INSERT INTO disciplinas_cursos (id_curso, id_disciplina) VALUES
((SELECT id FROM cursos WHERE id=4),(SELECT id FROM disciplinas WHERE id=11));

# Inserindo as notas
INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2018321098'),
(SELECT id FROM disciplinas WHERE id=1), 100);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2018321098'),
(SELECT id FROM disciplinas WHERE id=5), 100);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2018321098'),
(SELECT id FROM disciplinas WHERE id=9), 100);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2021231202'),
(SELECT id FROM disciplinas WHERE id=2), 82);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2021231202'),
(SELECT id FROM disciplinas WHERE id=6), 93);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2021231202'),
(SELECT id FROM disciplinas WHERE id=10), 100);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2021231202'),
(SELECT id FROM disciplinas WHERE id=8), 100);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2193109187'),
(SELECT id FROM disciplinas WHERE id=3), 85);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2193109187'),
(SELECT id FROM disciplinas WHERE id=7), 100);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2012786310'),
(SELECT id FROM disciplinas WHERE id=4), 74);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2012786310'),
(SELECT id FROM disciplinas WHERE id=8), 93);

INSERT INTO notas (matricula_aluno, id_disciplina, nota) VALUES
((SELECT matricula FROM alunos WHERE matricula='2012786310'),
(SELECT id FROM disciplinas WHERE id=11), 95);