CREATE DATABASE clinica_medica;
USE clinica_medica;

CREATE TABLE pacientes(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
data_nascimento DATE NOT NULL,
peso DECIMAL (5,2),
altura DECIMAL (3, 2),
convenio VARCHAR (30)
);

INSERT INTO pacientes (nome, data_nascimento, peso, altura, convenio)
VALUES ('Victor Luan', '1944-05-12', 82.50, 1.78, 'Unimed'),
	   ('Sabrina Vitoria', '1984-05-12', 82.50, 1.78, 'Unimed'),
       ('SABvic', '1934-05-12', 82.50, 1.78, 'Particular'),
       ('VICsab', '1924-05-12', 22.50, 1.78, 'Unimed'),
       ('SabVic', '1993-05-12', 42.50, 1.78, 'Unimed');
        
SELECT * FROM pacientes;

SELECT * FROM pacientes WHERE convenio = 'Unimed';

SELECT nome, peso, convenio FROM pacientes WHERE peso > 70.00;

SELECT * FROM pacientes WHERE nome LIKE 'C%';

UPDATE pacientes
SET peso = 80.00, convenio = 'Bradesco'
WHERE id = 1;

SELECT * FROM pacientes;

DELETE FROM pacientes 
WHERE id = 5;