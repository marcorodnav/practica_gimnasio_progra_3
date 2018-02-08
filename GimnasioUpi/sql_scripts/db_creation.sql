CREATE DATABASE UPI

USE UPI;

CREATE TABLE CLIENTE (
	ID_CLIENTE INT IDENTITY(1,1) PRIMARY KEY,
	NOMBRE VARCHAR(30) NOT NULL,
	EDAD INT NOT NULL,
	CONSTRAINT CHK_EDAD CHECK (EDAD >= 18)
)
GO

CREATE TABLE RUTINA (
	ID_RUTINA INT IDENTITY(1,1) PRIMARY KEY,
	NOMBRE VARCHAR(50) NOT NULL	
)
GO

CREATE TABLE REL_CLIENTE_RUTINA(
	ID_CLIENTE INT,
	ID_RUTINA INT,
	FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
	FOREIGN KEY (ID_RUTINA) REFERENCES RUTINA(ID_RUTINA),
	CONSTRAINT PK_CLIENTE PRIMARY KEY (ID_CLIENTE,ID_RUTINA)
) 

GO
INSERT INTO CLIENTE
(NOMBRE, EDAD)
VALUES
('Marco', 27),
('Karina', 27),
('Isabella', 18),
('Benjamin', 33)

INSERT INTO RUTINA
(NOMBRE)
VALUES
('Taebo'),
('Pesas'),
('Aerobicos')

SELECT * FROM CLIENTE
SELECT ID_RUTINA FROM RUTINA
INSERT INTO REL_CLIENTE_RUTINA
VALUES
(1,1),
(2,2),
(1,3),
(3,2),
(4,1)

SELECT c.NOMBRE 'Nombre', r.NOMBRE 'Rutina'
from CLIENTE c
INNER JOIN REL_CLIENTE_RUTINA rc on (c.ID_CLIENTE = rc.ID_CLIENTE)
INNER JOIN RUTINA R ON (rc.ID_RUTINA = r.ID_RUTINA) 