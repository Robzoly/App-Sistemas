CREATE TABLE usuarios(
  ide SERIAL PRIMARY KEY,
  nombre text NOT NULL,
  apellidos text NOT NULL,
  usuario varchar (20) NOT NULL,
  email text NOT NULL,
  contra text NOT NULL,
  sexo char,
  edad integer NOT NULL,
  peso double precision NOT NULL,
  altura double precision NOT NULL
  imagen text
);

CREATE TABLE ingredientes(
	ide integer PRIMARY KEY,
	ingrediente text NOT NULL,
	descripcion text NOT NULL
);

CREATE TABLE ingredientes_seleccionados(
	ide integer,
	ingrediente_S text,
	FOREIGN KEY (ide) REFERENCES ingredientes(ide)
);


INSERT INTO ingredientes (ide, ingrediente, descripcion) VALUES
(1, 'Tomates', 'Tomates maduros y rojos'),
(2, 'Cebolla', 'Cebolla amarilla'),
(3, 'Ajo', 'Dientes de ajo frescos'),
(4, 'Pimiento Rojo', 'Pimiento morrón verde'),
(5, 'Pechuga de Pollo', 'Pechuga de pollo sin hueso ni piel'),
(6, 'Carne Molida', 'Carne molida magra'),
(7, 'Pasta', 'Pasta de espagueti'),
(8, 'Champiñones', 'Champiñones rebanados'),
(9, 'Queso Parmesano', 'Queso Parmesano rallado'),
(10, 'Aceite de Oliva', 'Aceite de oliva extra virgen'),
(11, 'Sal', 'Sal de mesa'),
(12, 'Pimienta Negra', 'Pimienta negra molida'),
(13, 'Albahaca', 'Hojas de albahaca fresca'),
(14, 'Huevos', 'Huevos grandes'),
(15, 'Leche', 'Leche entera'),
(16, 'Mantequilla', 'Mantequilla sin sal'),
(17, 'Harina', 'Harina de todo uso'),
(18, 'Azúcar', 'Azúcar granulada'),
(19, 'Levadura', 'Levadura seca activa'),
(20, 'Canela', 'Canela molida'),
(21, 'Extracto de Vainilla', 'Extracto de vainilla puro'),
(22, 'Limón', 'Limón fresco'),
(23, 'Cilantro', 'Hojas de cilantro fresco'),
(24, 'Jengibre', 'Raíz de jengibre fresca'),
(25, 'Salsa de Soja', 'Salsa de soja baja en sodio'),
(26, 'Arroz', 'Arroz blanco de grano largo'),
(27, 'Chuletas de Cerdo', 'Chuletas de cerdo con hueso'),
(28, 'Lechuga', 'Lechuga iceberg crujiente'),
(29, 'Aguacate', 'Aguacate maduro'),
(30, 'Queso Cheddar', 'Queso cheddar fuerte'),
(31, 'Maíz', 'Granos de maíz fresco'),
(32, 'Crema Agria', 'Crema agria completa'),
(33, 'Salsa', 'Salsa de tomate'),
(34, 'Tofu', 'Tofu firme'),
(35, 'Escamas de Pimiento Rojo', 'Escamas de pimiento rojo triturado'),
(36, 'Aceite de Sésamo', 'Aceite de sésamo tostado'),
(37, 'Brócoli', 'Ramos de brócoli fresco'),
(38, 'Zanahorias', 'Zanahorias en rodajas'),
(39, 'Comino', 'Comino molido'),
(40, 'Pimentón', 'Pimentón ahumado'),
(41, 'Romero', 'Ramas de romero fresco'),
(42, 'Tomillo', 'Hojas de tomillo secas'),
(43, 'Calabacín', 'Calabacín en rodajas'),
(44, 'Repollo', 'Repollo verde'),
(45, 'Nueces', 'Nueces picadas'),
(46, 'Piña', 'Trozos de piña fresca'),
(47, 'Leche de Coco', 'Leche de coco en lata'),
(48, 'Mantequilla de Maní', 'Mantequilla de maní suave'),
(49, 'Miel', 'Miel pura'),
(50, 'Chips de Chocolate', 'Chips de chocolate semi dulce');


DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS ingredientes;
DROP TABLE IF EXISTS ingredientes_seleccionados;

Select*from usuarios;
Select*from ingredientes;
Select*from ingredientes_seleccionados;
