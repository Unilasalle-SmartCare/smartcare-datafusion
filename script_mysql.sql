USE smartcare_db;
	 
-- Tipo
DROP TABLE TipoDispositivo;
CREATE TABLE TipoDispositivo (
  IdTipo INT NOT NULL,
  Nome CHAR(40) NOT NULL,
  PRIMARY KEY (IdTipo));

-- Dispositivo
DROP TABLE Dispositivo;
CREATE TABLE Dispositivo (   
  IdDispositivo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CodigoDispositivo VARCHAR(40) NULL,
  IdTipo INT NULL,
  IdAmbiente INT NULL,
  Nome VARCHAR(40) NULL,
  Descricao VARCHAR(200) NULL,
  Eixo_X DOUBLE NULL,
  Eixo_Y DOUBLE NULL,
  Orientacao char(2),
  FOREIGN KEY (IdTipo) REFERENCES TipoDispositivo(IdTipo));

-- Ambiente
CREATE TABLE Ambiente (
  IdAmbiente INT NOT NULL,  
  Nome VARCHAR(40) NOT NULL,
  Descricao VARCHAR(200) NULL,
  PRIMARY KEY (IdAmbiente));
 
-- Medicao
DROP TABLE Medicao;
CREATE TABLE Medicao (
  IdMedicao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  IdDispositivo INT NULL,
  DataHora DATETIME(3) NULL,
  Valor VARCHAR(10) NULL,
  Unidade CHAR(4) NULL,
  FOREIGN KEY (IdDispositivo) REFERENCES Dispositivo(IdDispositivo));
  
INSERT INTO TipoDispositivo (`IdTipo` ,`Nome`) VALUES (1 ,'Atuador');
INSERT INTO TipoDispositivo (`IdTipo` ,`Nome`) VALUES (2 ,'Sensor');

INSERT INTO Ambiente (`IdAmbiente` ,`Nome` ,`Descricao`) VALUES (1 ,'Quarto 01' ,'');
INSERT INTO Ambiente (`IdAmbiente` ,`Nome` ,`Descricao`) VALUES (2 ,'Quarto 02' ,'');
INSERT INTO Ambiente (`IdAmbiente` ,`Nome` ,`Descricao`) VALUES (3 ,'Quarto 03' ,'');
INSERT INTO Ambiente (`IdAmbiente` ,`Nome` ,`Descricao`) VALUES (4 ,'Sala' ,'');
INSERT INTO Ambiente (`IdAmbiente` ,`Nome` ,`Descricao`) VALUES (5 ,'Circulação' ,'');
INSERT INTO Ambiente (`IdAmbiente` ,`Nome` ,`Descricao`) VALUES (6 ,'Cozinha' ,'');
INSERT INTO Ambiente (`IdAmbiente` ,`Nome` ,`Descricao`) VALUES (7 ,'Banheiro' ,'');
    
-- INSERTS DO BOT�O
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('BTN-01',	2,	1, 'Botão', 'Usado para detectar uma pessoa deitada na cama', 77,	66, '-Z');

--  SQLINES DEMO *** ES DE Presença PIR
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('PIR-01',	2,	1,	'Sensor de Presença',	'Usado para detectar Presença', 260,	295, '-Z');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('PIR-02',	2,	2,	'Sensor de Presença', 'Usado para detectar Presença',	99,	296,	'-Z');	 
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('PIR-03',	2,	3,	'Sensor de Presença', 'Usado para detectar Presença',	88, 107, '-Z');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('PIR-04', 2, 4, 'Sensor de Presença', 'Usado para detectar Presença', 485,  110, '-Z');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('PIR-05',	2,	5,	'Sensor de Presença', 'Usado para detectar Presença',	217, 188, '-Z');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('PIR-06',	2,	6,	'Sensor de Presença', 'Usado para detectar Presença',	328,	90,	'-Z');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('PIR-07',	2,	7,	'Sensor de Presença', 'Usado para detectar Presença',	233,	90,	'-Z');

--  SQLINES DEMO *** ES DE distância Ultrassônico UIR
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-11' ,2 ,1 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 240 , 233 ,'+Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-12' ,2 ,1 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 261 , 363 ,'-X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-21' ,2 ,2 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 107 , 363 ,'-Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-22' ,2 ,2 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 140 , 231 ,'+X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-31' ,2 ,3 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 7 , 111 ,'+X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-32' ,2 ,3 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 140 , 187 ,'+X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-41' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 378 , 158 ,'+X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-42' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 378 , 67 ,'+X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-43' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 419 , 7 ,'-Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-44' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 485 , 7 ,'-Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-45' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 550 , 7 ,'-Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-46' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 594 , 65 ,'-X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-47' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa' , 594 , 125 ,'-X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-48' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 484 , 207 ,'+Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-49' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 424 , 207 ,'+Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-50' ,2 ,5 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 356 , 207 ,'+Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-51' ,2 ,5 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 291 , 207 ,'+Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-52' ,2 ,5 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 203 , 162 ,'-Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-53' ,2 ,5 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 322 , 162 ,'-Y');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-61' ,2 ,6 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 300 , 14 ,'+X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-62' ,2 ,6 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 300 , 70 ,'+X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-63' ,2 ,6 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 300 , 126 ,'+X');	 
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-71' ,2 ,7 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 262 , 27 ,'-X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-72' ,2 ,7 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 262 , 70 ,'-X');
INSERT INTO Dispositivo (`CodigoDispositivo` ,`IdTipo` ,`IdAmbiente` ,`Nome` ,`Descricao` ,`Eixo_X` ,`Eixo_Y` ,`Orientacao`) VALUES ('UIR-73' ,2 ,7 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 216 , 124 ,'+X');
