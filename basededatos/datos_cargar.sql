SET GLOBAL time_zone = '+2:00';
-- MySQL Script generated by MySQL Workbench
-- Fri Apr 26 20:40:23 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema popollo_adventure_cargar
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema popollo_adventure_cargar
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `popollo_adventure_cargar` DEFAULT CHARACTER SET utf8 ;
USE `popollo_adventure_cargar` ;

-- -----------------------------------------------------
-- Table `popollo_adventure_cargar`.`Heroe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `popollo_adventure_cargar`.`Heroe` (
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  `saludMaxima` INT NULL,
  `salud` INT NULL,
  `fuerza` INT NULL,
  `magia` INT NULL,
  `agilidad` INT NULL,
  `defensa` INT NULL,
  `dinero` INT NULL,
  `reputacion` INT NULL,
  `experiencia` INT NULL,
  `nivel` INT NULL,
  PRIMARY KEY (`nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `popollo_adventure_cargar`.`Enemigo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `popollo_adventure_cargar`.`Enemigo` (
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  `saludMaxima` INT NULL,
  `salud` INT NULL,
  `fuerza` INT NULL,
  `magia` INT NULL,
  `agilidad` INT NULL,
  `defensa` INT NULL,
  `dinero` INT NULL,
  `experiencia` INT NULL,
  PRIMARY KEY (`nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `popollo_adventure_cargar`.`Objeto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `popollo_adventure_cargar`.`Objeto` (
  `ID` INT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  `poder` INT NULL,
  `cantidad` INT NULL,
  `tipo` VARCHAR(45) NULL,
  `precio` INT NULL,
  `Heroe_nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre`),
  INDEX `fk_Objeto_Heroe1_idx` (`Heroe_nombre` ASC),
  CONSTRAINT `fk_Objeto_Heroe1`
    FOREIGN KEY (`Heroe_nombre`)
    REFERENCES `popollo_adventure_cargar`.`Heroe` (`nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `popollo_adventure_cargar`.`Habilidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `popollo_adventure_cargar`.`Habilidad` (
  `ID` INT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  `especial` INT NULL,
  `usosMaximos` INT NULL,
  `usosRestantes` INT NULL,
  `tipo` VARCHAR(45) NULL,
  `Heroe_nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre`),
  INDEX `fk_Habilidad_Heroe_idx` (`Heroe_nombre` ASC),
  CONSTRAINT `fk_Habilidad_Heroe`
    FOREIGN KEY (`Heroe_nombre`)
    REFERENCES `popollo_adventure_cargar`.`Heroe` (`nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `popollo_adventure_cargar`.`Npc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `popollo_adventure_cargar`.`Npc` (
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  `moral` VARCHAR(45) NULL,
  PRIMARY KEY (`nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `popollo_adventure_cargar`.`Habilidad_Enemigo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `popollo_adventure_cargar`.`Habilidad_Enemigo` (
  `ID` INT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  `especial` INT NULL,
  `usosMaximos` INT NULL,
  `usosRestantes` INT NULL,
  `tipo` VARCHAR(45) NULL,
  `Enemigo_nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre`),
  INDEX `fk_Habilidad_Enemigo_Enemigo1_idx` (`Enemigo_nombre` ASC),
  CONSTRAINT `fk_Habilidad_Enemigo_Enemigo1`
    FOREIGN KEY (`Enemigo_nombre`)
    REFERENCES `popollo_adventure_cargar`.`Enemigo` (`nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- Introducir datos
-- Heroe
insert into heroe values(
	'Popollo',
    'Un adorable popollito comilon.',
    80,
    80,
    20,
    5,
    10,
    10,
    500,
    0,
    0,
    1
);

-- Enemigos
insert into enemigo values(
	'Poring',
    'Una pequeña bola rosita.',
    60,
    60,
    15,
    3,
    10,
    5,
    500,
    25
);

insert into enemigo values(
	'Nigromante',
    'Da grima verlo.',
    80,
    80,
    20,
    5,
    15,
    15,
    1000,
    50
);

insert into enemigo values(
	'Golem',
    'Un muro enorme de piedra.',
    150,
    150,
    30,
    5,
    15,
    25,
    1500,
    50
);

insert into enemigo values(
	'Goblin',
    'Es muy rapido.',
    120,
    100,
    20,
    3,
    30,
    10,
    1500,
    50
);

insert into enemigo values(
	'Pulpoi',
    'Pulpo pervertido.',
    300,
    300,
    40,
    5,
    20,
    30,
    2500,
    100
);

insert into npc values(
	'Narcyl',
    'Sacerdotisa novata.',
    'legal'
);

insert into npc values(
	'Tomberi',
    'Demasiado gruñon.',
    'neutral'
);

insert into npc values(
	'Mystra',
    'Hechicera demente.',
    'caotico'
);

-- Habilidades del Heroe
insert into habilidad values(
	1,
	'Proyectil Magico',
	'Disparas chispas magicas de tus manos.',
	7,
    5,
    5,
    'ofensivo',
    'Popollo'
);

insert into habilidad values(
	2,
	'Flecha Helada',
	'Lanzas una flecha que congela todo a su paso.',
	12,
    3,
    3,
    'ofensivo',
    'Popollo'
);

insert into habilidad values(
	3,
	'Curar Heridas',
	'Sana las heridas superficiales.',
	8,
    3,
    3,
    'curativo',
    'Popollo'
);

-- Habilidades del enemigo Poring
insert into habilidad_enemigo values(
	1,
	'Pedo magico',
	'Flatulencia rosada.',
	7,
    5,
    5,
    'ofensivo',
    'Poring'
);

insert into habilidad_enemigo values(
	2,
	'Tirar jellopy',
	'Mejor no digo de donde sale.',
	10,
    3,
    3,
    'ofensivo',
    'Poring'
);

-- Habilidades del enemigo Nigromante
insert into habilidad_enemigo values(
	1,
	'Lanzar maldicion',
	'Dolor intenso en las entrañas.',
	5,
    5,
    5,
    'ofensivo',
    'Nigromante'
);

insert into habilidad_enemigo values(
	2,
	'Flecha acida',
	'Derrite armaduras y quema la carne.',
	10,
    3,
    3,
    'ofensivo',
    'Nigromante'
);

-- Habilidades del Golem
insert into habilidad_enemigo values(
	1,
	'Mina magica',
	'El suelo a tu alrededor explota.',
	5,
    5,
    5,
    'ofensivo',
    'Golem'
);

insert into habilidad_enemigo values(
	2,
	'Llamarada',
	'Quema el aire a su alrededor.',
	7,
    3,
    3,
    'ofensivo',
    'Golem'
);

-- Habilidades de Goblin
insert into habilidad_enemigo values(
	1,
	'Lanza envenenada',
	'La punta de lanza brilla con un color extraña.',
	10,
    5,
    5,
    'ofensivo',
    'Goblin'
);

insert into habilidad_enemigo values(
	2,
	'Flecha venenosa',
	'Es mejor que no te alcance.',
	15,
    3,
    3,
    'ofensivo',
    'Goblin'
);

-- Habilidades de Pulpoi
insert into habilidad_enemigo values(
	1,
	'Cosquillas',
	'Toca demasiadas partes de tu cuerpo.',
	10,
    5,
    5,
    'ofensivo',
    'Pulpoi'
);

insert into habilidad_enemigo values(
	2,
	'Mirada viciosa',
	'Te desnuda con la mirada.',
	15,
    3,
    3,
    'ofensivo',
    'Pulpoi'
);

insert into objeto values(
	1,
	'Bomba Pequeña',
    'Inflige 30 puntos de daño.',
	30,
	3,
	'ofensivo',
    100,
    'Popollo'
);

insert into objeto values(
	2,
	'Bomba Grande',
	'Inflige 100 puntos de daño.',
	100,
	1,
	'ofensivo',
    500,
    'Popollo'
);

insert into objeto values(
	3,
	'Pocion',
	'Restablece 50 puntos de salud.',
	50,
	5,
	'curativo',
	250,
    'Popollo'
);


