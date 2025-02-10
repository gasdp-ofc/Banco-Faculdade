CREATE TABLE tbl_alunos (
  id_aluno INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  cpf VARCHAR(14),
  matricula VARCHAR(20) UNIQUE,
  id_curso INT,
  id_turma INT,
  FOREIGN KEY (id_curso) REFERENCES tbl_cursos(id_curso),
  FOREIGN KEY (id_turma) REFERENCES tbl_turmas(id_turma)
);

CREATE TABLE tbl_professores (
  id_professor INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  cpf VARCHAR(14),
  id_disciplina INT,
  FOREIGN KEY (id_disciplina) REFERENCES tbl_disciplinas(id_disciplina)
);

CREATE TABLE tbl_cursos (
  id_curso INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  carga_horaria INT
);

CREATE TABLE tbl_disciplinas (
  id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  id_curso INT,
  carga_horaria INT,
  FOREIGN KEY (id_curso) REFERENCES tbl_cursos(id_curso)
);

CREATE TABLE tbl_turmas (
  id_turma INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  id_curso INT,
  id_professor INT,
  FOREIGN KEY (id_curso) REFERENCES tbl_cursos(id_curso),
  FOREIGN KEY (id_professor) REFERENCES tbl_professores(id_professor)
);

CREATE TABLE tbl_notas (
  id_nota INT AUTO_INCREMENT PRIMARY KEY,
  id_aluno INT,
  id_disciplina INT,
  id_professor INT,
  nota_final DECIMAL(5,2),
  FOREIGN KEY (id_aluno) REFERENCES tbl_alunos(id_aluno),
  FOREIGN KEY (id_disciplina) REFERENCES tbl_disciplinas(id_disciplina),
  FOREIGN KEY (id_professor) REFERENCES tbl_professores(id_professor)
);