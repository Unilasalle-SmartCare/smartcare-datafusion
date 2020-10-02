USE [smartcare_db]
GO

	--INSERTS DO BOT�O
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
	 VALUES ('BTN-01',	2,	1, 'Botão', 'Usado para detectar uma pessoa deitada na cama', 77,	66, '-Z')

	--INSERTS DOS SENSORES DE Presença PIR
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
	 VALUES ('PIR-01',	2,	1,	'Sensor de Presença',	'Usado para detectar Presença', 260,	295, '-Z')
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
	 VALUES ('PIR-02',	2,	2,	'Sensor de Presença', 'Usado para detectar Presença',	99,	296,	'-Z')	 
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
	 VALUES ('PIR-03',	2,	3,	'Sensor de Presença', 'Usado para detectar Presença',	88, 107, '-Z')
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
	 VALUES ('PIR-04', 2, 4, 'Sensor de Presença', 'Usado para detectar Presença', 485,  110, '-Z')
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
	 VALUES ('PIR-05',	2,	5,	'Sensor de Presença', 'Usado para detectar Presença',	217, 188, '-Z')
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
	 VALUES ('PIR-06',	2,	6,	'Sensor de Presença', 'Usado para detectar Presença',	328,	90,	'-Z')
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
	 VALUES ('PIR-07',	2,	7,	'Sensor de Presença', 'Usado para detectar Presença',	233,	90,	'-Z')

	 --INSERTS DOS SENSORES DE distância Ultrassônico UIR
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-11' ,2 ,1 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 240 , 233 ,'+Y')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-12' ,2 ,1 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 261 , 363 ,'-X')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-21' ,2 ,2 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 107 , 363 ,'-Y')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-22' ,2 ,2 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 140 , 231 ,'+X')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-31' ,2 ,3 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 7 , 111 ,'+X')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-32' ,2 ,3 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa', 140 , 187 ,'+X')
	 
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-41' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 378 , 158 ,'+X')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-42' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 378 , 67 ,'+X')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-43' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 419 , 7 ,'-Y')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-44' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 485 , 7 ,'-Y')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-45' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 550 , 7 ,'-Y')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-46' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 594 , 65 ,'-X')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-47' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 594 , 125 ,'-X')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-48' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 484 , 207 ,'+Y')

	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-49' ,2 ,4 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 424 , 207 ,'+Y')
	  INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-50' ,2 ,5 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 356 , 207 ,'+Y')
	 
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-51' ,2 ,5 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 291 , 207 ,'+Y')
	 
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-52' ,2 ,5 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 203 , 162 ,'-Y')
	 
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-53' ,2 ,5 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 322 , 162 ,'-Y')	 
	 
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-61' ,2 ,6 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 300 , 14 ,'+X')
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-62' ,2 ,6 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 300 , 70 ,'+X')
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-63' ,2 ,6 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 300 , 126 ,'+X')	 
	 
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-71' ,2 ,7 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 262 , 27 ,'-X')
	 
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-72' ,2 ,7 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 262 , 70 ,'-X')
	 
	 INSERT INTO [dbo].[Dispositivo] ([CodigoDispositivo] ,[IdTipo] ,[IdAmbiente] ,[Nome] ,[Descricao] ,[Eixo_X] ,[Eixo_Y] ,[Orientacao])
     VALUES ('UIR-73' ,2 ,7 ,'Ultrassônico' , 'Usado para detectar a distância de um objeto ou pessoa'
	 , 216 , 124 ,'+X')

GO

SELECT * FROM DISPOSITIVO