CREATE TABLE professores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento VARCHAR(50)
);

CREATE TABLE disciplinas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES professores(id)
);

CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE matriculas (
    id SERIAL PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);

-- Inserção de Dados:

-- DADOS DOS PROFESSORES:
INSERT INTO professores (nome, departamento) VALUES
('João Silva', 'Matemática'),
('Maria Oliveira', 'Ciências'),
('Carlos Souza', 'História');

-- DADOS DAS DISCIPLINAS:
INSERT INTO disciplinas (nome, carga_horaria, professor_id) VALUES
('Matemática Básica', 60, 1),
('Física', 80, 2),
('História do Brasil', 40, 3);

-- DADOS DOS ALUNOS:
INSERT INTO alunos (nome, data_nascimento) VALUES
('Ana Costa', '2005-03-15'),
('Pedro Santos', '2006-07-22'),
('Lucas Lima', '2005-11-30');

-- DADOS DAS MATRICULAS:
INSERT INTO matriculas (aluno_id, disciplina_id, data_matricula) VALUES
(1, 1, '2023-01-10'),
(1, 2, '2023-01-10'),
(2, 1, '2023-01-11'),
(3, 3, '2023-01-12');

SELECT * FROM professores;
SELECT * FROM disciplinas;
SELECT * FROM alunos;
SELECT * FROM matriculas;
