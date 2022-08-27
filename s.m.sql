/*nombre: ignacio manuel sierra*/
/*matricula: 21-EIIN-1-122*/
/*seccion:0541*/
 USE [master]
GO
create database [s_mtechnologysrl]

Create table articulos(
	id int IDENTITY(1,1) PRIMARY KEY,
	articulos nvarchar (50) NOT NULL,
	MODELO nvarchar(50) NOT NULL,
	precio int,
	suplidor int
);

Create table suplidor(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombres varchar(255),
	Telefono varchar(255),
	Direccion varchar(255),
	Correo varchar(255),
articulos int foreign key references articulos(id)
);

Create table empleado(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(255),
	DIRECCION varchar(255),
	telefono varchar(255),
	Correo varchar(255),
	cargo varchar(255),
	sueldo  varchar(255)
);

Create table reparacion(
	id int IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(255),
	reparacio varchar(255),
	Telefono varchar(255),
	empleado_Asignado int foreign key references empleado(id),
	Usuario_Cliente  int foreign key references empleado(id),
	articulos_id int foreign key references articulos(id),
	numero_de_tiket int,
	Fecha_entrega int
);


Create table cuentas_por_pagar(
	id int IDENTITY(1,1) PRIMARY KEY,
	intitucion varchar(255),
	telefono varchar(255),
	deuda int,
	Fecha varchar(255),
	empleado_id int foreign key references empleado(id),
);
SET IDENTITY_INSERT dbo.articulos ON 

INSERT dbo.articulos(ID,articulos, MODELO,precio,suplidor) VALUES (1, N'monitor lenovo',N'legion Y25-35',17300,1 )
INSERT dbo.articulos(ID,articulos, MODELO,precio,suplidor) VALUES (2, N'procesador',N'intel core i3',8500 ,2)
INSERT dbo.articulos(ID, articulos,MODELO,precio,suplidor) VALUES (3, N'teclado gaming',N'fighter ii k613l',1300,3 )
INSERT dbo.articulos(id,articulos,MODELO,precio,suplidor) VALUES (4, N'UPS UNIPOWER',N'500VA',2000 ,4)
INSERT dbo.articulos(ID,articulos,MODELO,precio,suplidor) VALUES (5, N'SPU',N'HP COMPAQ',5500,5 )
INSERT dbo.articulos(ID,articulos,MODELO,precio,suplidor) VALUES (6, N'MAUSE',N'MS-59XMK',500 ,6)
INSERT dbo.articulos(ID,articulos,MODELO,precio,suplidor) VALUES (7, N'IMPRESORA',N'INK ADVANTAGE 2375',2500,7 )
INSERT dbo.articulos(ID,articulos,MODELO,precio,suplidor) VALUES (8, N'LATOP LENOVO ',N'THINKPAD L560',16000 ,8)
INSERT dbo.articulos(ID,articulos,MODELO,precio,suplidor) VALUES (9, N'TARGETA DE VIDEO 4GB',N'GEFORCE 730',10560 ,9)
INSERT dbo.articulos (ID,articulos,MODELO,precio,suplidor) VALUES (10, N'BOCINAS',N'HAVIT USB 2,2',1500 ,10)
go
 SET IDENTITY_INSERT  dbo.articuloS Off
 go
 SET IDENTITY_INSERT dbo.suplidor on
INSERT dbo.suplidor(ID,Nombres,Telefono,Direccion,Correo) values(1, N'hooli',8493645373,N'AV 27 DE FEBRERO',N'HOOLI@GMQIL.COM')
INSERT dbo.suplidor(id,Nombres,Telefono,Direccion,Correo) values(2,N'GUATAPO.COM',8295289967,N'C/ ANTIGUA DUARTE #24',N'GUAPA@GMQIL.COM')
INSERT dbo.suplidor(ID,Nombres,Telefono,Direccion,Correo) values( 3,N'TECNOLOGIA RC',8291234598,N'C/HORACIO BLANCO #04',N'RC56@GMQIL.COM')
INSERT dbo.suplidor(ID,Nombres,Telefono,Direccion,Correo) values( 4,N'OMEGA TECH',8291234543,N'C/HEEMANAS MIRABAL #09',N'IUYR76@GMQIL.COM')
INSERT dbo.suplidor(ID,Nombres,Telefono,Direccion,Correo) values( 5,N'PROTRONIC IMPORTADORA',8291231245,N'C/CHURCHIL#74',N'YU6@GMQIL.COM')
INSERT dbo.suplidor(ID,Nombres,Telefono,Direccion,Correo) values( 6,N'DATACEL',8291209876,N'C/TIRADENTE  #64',N'IMPO87@GMQIL.COM')
INSERT dbo.suplidor(ID,Nombres,Telefono,Direccion,Correo) values( 7,N'WD TECNOLOGIA ',8297642467,N'AV. JUAN PABLO DUARTE  #12',N'65I@GMQIL.COM')
INSERT dbo.suplidor(ID,Nombres,Telefono,Direccion,Correo) values( 8, N'NERDOT ',8297986743,N'AV. JUAN PABLO DUARTE  #98',N'NER34@GMQIL.COM')
INSERT dbo.suplidor(ID,Nombres,Telefono,Direccion,Correo) values( 9,N'SINERGIT',8498765354, N'AV. POLIVIO DIAS   #87',N'SINER@GMQIL.COM')
INSERT dbo.suplidor(ID,Nombres,Telefono,Direccion,Correo) values( 10,N'CYM COMPUR',8097623426,N'C/. LIUS AMIAMA TI  #78',N'CYM@GMQIL.COM')
go
  SET IDENTITY_INSERT dbo.suplidor off
  GO
  SET IDENTITY_INSERT dbo.Empleado on
INSERT dbo.Empleado([ID], Nombre,Cargo, telefono, Correo,Direccion,Sueldo) VALUES (1, N'predro jose', N'tecnico', N'829845638', N'pedro0@gmail.com', N'c/09 Los novas',  21000)
INSERT dbo.Empleado([ID], Nombre, cargo, telefono, Correo, Direccion,Sueldo) VALUES (3, N'manaury rosario ', N'vendedor', N'8097123481', N'rosario44@gmail.com', N'c/sanches madre', 15000)
INSERT dbo.Empleado([ID],Nombre,Cargo,telefono,Correo,Direccion,Sueldo) VALUES (4, N'manuela sierra', N'vendedora', N'829234560', N'manu02@gmail.com', N'apart 1 las caobas', 15000)
INSERT dbo.Empleado([ID], Nombre,Cargo,telefono,Correo,Direccion,Sueldo) VALUES (5, N'ignacio siera', N'tecnico ', N'8297653412', N'ig24@gmail.com', N'c/2 sante', 21000)
INSERT dbo.Empleado([ID], Nombre,Cargo,telefono,Correo,Direccion,Sueldo) VALUES (6, N'marta solamo', N'conserge', N'8390654784', N'uus92@gmail.com', N'c/8 lava pies ', 10500)
INSERT dbo.Empleado([ID], Nombre,Cargo,telefono,Correo,Direccion,Sueldo) VALUES (7, N'algel yacer ', N'encargado de compras ', N'8298764544', N'angel@gmail.com', N'apar 24 villa fundacion', 19000)
INSERT dbo.Empleado([ID], Nombre,Cargo,telefono,Correo,Direccion,Sueldo) VALUES (8, N'ruben aquino', N'encargado', N'8298763322', N'aquino24@gamil.com', N'c/f sante', 40000)
INSERT dbo.Empleado([ID], Nombre,Cargo,telefono,Correo,Direccion,Sueldo) VALUES (9, N'jairon sanches ', N'delivery', N'82978457',  N'jairon@gamil.com', N'c/g los molina ',13500)
INSERT dbo.Empleado([ID], Nombre,Cargo,telefono,Correo,Direccion,Sueldo) VALUES (10, N' hemry eredia ', N'seguridad', N'8296134553', N'ron@gamil.com', N'c/23 yaguate', 12500)
go
SET IDENTITY_INSERT dbo.Empleado off
go
SET IDENTITY_INSERT dbo.reparacion on
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega) values(1,N'JULIA PEREZ',N'CAMBIO DE TECLADO',8494072709,1,12/08/22)
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega) values(2,N'PATRICIA DE LEON ',N'CHEQUEO EN GENERAL',8494987654,1,12/08/22)
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega) values(3,N'LIA SORIANO',N'MATENIMIENTO LOGICO LIMPIZA',8499987576,3,13/08/22)
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega)values(4,N'FRANKIE RUIZ',N'CAMBIO DE TRAGETA DE VIDEO',809866423,4,13/08/22)
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega) values(5,N'ENGER BELTRE',N'SOLUCION DE PROBLEMA EN SOFTWARE',8097873569,5,15/08/22)
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega) values(6,N'YEURY MARTINEZ',N'CHEQUEO DE PANTALLA',849132536,6,17/08/22)
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega)values(7,N'MARIA FELIX',N'REMPLASO MOTHER BOARD EN DESKTAOP',8095289767,7,17/08/22)
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega) values(8,N'EDUIN VALLEJO',N'CAMBIO DE PILA LITIO',849409867,8,19/08/22)
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega) values(9,N'VICTOR MARTES',N'FORMATEO DISCO DURO',8496778854,9,20/08/22)
INSERT dbo.reparacion(ID,nombre,reparacio ,Telefono,numero_de_tiket,Fecha_entrega) values(10,N'RUBY SIERRA',N'MANTENIMIENTO CORRECTIVO',809753568,10,21/08/22)
go
SET IDENTITY_INSERT dbo.reparacion off
go
SET IDENTITY_INSERT dbo.cuentas_por_pagar on
INSERT dbo.cuentas_por_pagar(ID,intitucion,deuda,Fecha) VALUES (1,N'EDESUR',4500,N' DIA 25 DE CADA MES')
INSERT dbo.cuentas_por_pagar(ID,intitucion,deuda,fecha ) VALUES (2,N'INAPA',1600,N'DIA 25 DE CADA MES')
INSERT dbo.cuentas_por_pagar(ID,intitucion,deuda,fecha) VALUES (3,N'LIBERTY',2500,N' DIA 05 DE CADA MES')
go
SET IDENTITY_INSERT   dbo.reparacion off
go