USE rec_22A;

CREATE TABLE Medicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200),
    data_contratacao DATE NOT NULL,
    horario_trabalho VARCHAR(50),
    status ENUM('Ativo', 'Inativo') DEFAULT 'Ativo',
    salario DECIMAL(10, 2),
    data_nascimento DATE,
    genero ENUM('Masculino', 'Feminino', 'Outro'),
    especializacoes_adicionais TEXT
);

INSERT INTO Medicos (nome, especialidade, crm, telefone, email, endereco, data_contratacao, horario_trabalho, status, salario, data_nascimento, genero, especializacoes_adicionais)
VALUES
('Dr. João Silva', 'Cardiologia', '123456', '1234-5678', 'joao.silva@hospital.com', 'Rua das Flores, 123', '2020-01-15', '08:00 - 17:00', 'Ativo', 15000.00, '1975-04-12', 'Masculino', 'Especialização em Cardiologia Pediátrica'),
('Dra. Maria Oliveira', 'Pediatria', '234567', '2345-6789', 'maria.oliveira@hospital.com', 'Avenida Central, 456', '2019-05-22', '09:00 - 18:00', 'Ativo', 14000.00, '1980-07-19', 'Feminino', 'Especialização em Neonatologia'),
('Dr. Pedro Souza', 'Ortopedia', '345678', '3456-7890', 'pedro.souza@hospital.com', 'Travessa do Sol, 789', '2021-08-30', '10:00 - 19:00', 'Ativo', 14500.00, '1985-12-23', 'Masculino', 'Especialização em Cirurgia Ortopédica'),
('Dr. Carlos Pereira', 'Neurologia', '456789', '4567-8901', 'carlos.pereira@hospital.com', 'Rua dos Pinhais, 101', '2018-11-20', '08:00 - 16:00', 'Ativo', 16000.00, '1970-03-10', 'Masculino', 'Especialização em Neurocirurgia'),
('Dra. Ana Lima', 'Dermatologia', '567890', '5678-9012', 'ana.lima@hospital.com', 'Avenida das Acácias, 202', '2017-09-15', '09:00 - 17:00', 'Ativo', 15500.00, '1982-02-15', 'Feminino', 'Especialização em Dermatoscopia'),
('Dr. Eduardo Almeida', 'Gastroenterologia', '678901', '6789-0123', 'eduardo.almeida@hospital.com', 'Travessa da Praia, 303', '2019-03-22', '10:00 - 18:00', 'Ativo', 15000.00, '1978-06-25', 'Masculino', 'Especialização em Endoscopia Digestiva'),
('Dra. Beatriz Costa', 'Ginecologia', '789012', '7890-1234', 'beatriz.costa@hospital.com', 'Rua do Parque, 404', '2020-07-18', '11:00 - 19:00', 'Ativo', 14800.00, '1985-09-30', 'Feminino', 'Especialização em Ginecologia Oncológica'),
('Dr. Lucas Fernandes', 'Psiquiatria', '890123', '8901-2345', 'lucas.fernandes@hospital.com', 'Avenida da Serra, 505', '2021-01-12', '12:00 - 20:00', 'Ativo', 15300.00, '1987-11-22', 'Masculino', 'Especialização em Psiquiatria Infantil'),
('Dra. Helena Martins', 'Oftalmologia', '901234', '9012-3456', 'helena.martins@hospital.com', 'Rua das Palmeiras, 606', '2016-04-10', '07:00 - 15:00', 'Ativo', 16200.00, '1983-04-05', 'Feminino', 'Especialização em Cirurgia Refrativa'),
('Dr. Ricardo Gomes', 'Urologia', '012345', '0123-4567', 'ricardo.gomes@hospital.com', 'Avenida dos Jacarandás, 707', '2018-10-02', '08:00 - 16:00', 'Ativo', 15800.00, '1979-10-25', 'Masculino', 'Especialização em Urologia Oncológica'),
('Dra. Fernanda Rocha', 'Endocrinologia', '1234', '1234-5678', 'fernanda.rocha@hospital.com', 'Rua das Mangueiras, 808', '2017-06-15', '09:00 - 17:00', 'Ativo', 15000.00, '1984-06-20', 'Feminino', 'Especialização em Endocrinologia Pediátrica'),
('Dr. Marcos Silva', 'Cardiologia', '234568', '2345-6789', 'marcos.silva@hospital.com', 'Avenida das Hortênsias, 909', '2019-08-01', '10:00 - 18:00', 'Ativo', 16300.00, '1978-12-10', 'Masculino', 'Especialização em Eletrofisiologia Cardíaca'),
('Dra. Carla Souza', 'Neurologia', '345679', '3456-7890', 'carla.souza@hospital.com', 'Travessa dos Pinheiros, 1010', '2020-03-12', '11:00 - 19:00', 'Ativo', 15700.00, '1985-11-12', 'Feminino', 'Especialização em Neurologia Infantil'),
('Dr. Felipe Almeida', 'Ortopedia', '456780', '4567-8901', 'felipe.almeida@hospital.com', 'Rua das Bromélias, 1111', '2021-05-25', '12:00 - 20:00', 'Ativo', 15400.00, '1987-01-15', 'Masculino', 'Especialização em Cirurgia da Coluna'),
('Dra. Renata Oliveira', 'Geriatria', '567893', '5678-9012', 'renata.oliveira@hospital.com', 'Avenida das Azaleias, 1212', '2019-11-08', '07:00 - 15:00', 'Ativo', 16000.00, '1982-03-25', 'Feminino', 'Especialização em Geriatria Clínica'),
('Dr. Leonardo Santos', 'Pneumologia', '678904', '6789-0123', 'leonardo.santos@hospital.com', 'Rua das Rosas, 1313', '2020-07-22', '08:00 - 16:00', 'Ativo', 15500.00, '1980-07-10', 'Masculino', 'Especialização em Pneumologia Intervencionista');

#1

select nome, especialidade
from Medicos;

#2

select salario 
from Medicos
where salario between 15000.00 and 16000.00;

#3 Selecionar os nomes e e-mails dos médicos, exibindo os resultados em ordem alfabética pelo nome.

select nome, email
from Medicos
order by nome;

#4 Selecionar os médicos ordenados pela data de contratação, do mais recente para o mais antigo.

SELECT * from Medicos
order by data_contratacao DESC;

#5 Selecionar os médicos com especializações adicionais que contenham a palavra 'Cirurgia'.

SELECT*FROM Medicos
where especializacoes_adicionais like '%Cirurgia%';

#6 Selecionar os médicos que foram contratados após o ano de 2020.

select * FROM Medicos 
where data_contratacao > '2020-12-31';

#7 Selecionar os médicos que trabalham no horário da tarde (12:00 - 20:00 ou 11:00 - 19:00).

select * from Medicos 
where horario_trabalho = '11:00 - 19:00';

#8 Selecionar os médicos cujo número de telefone termina com '8901'.

select * from Medicos
where telefone like '%8901';

#9 Selecionar os nomes dos médicos que são especialistas em Cardiologia.

select nome
from Medicos
where especialidade = 'Cardiologia';

#10. Selecionar a média dos salários de todos os médicos.



