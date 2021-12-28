-- -----------------------------------------------------
-- Schema sistemasDeNotas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sistemasDeNotas` DEFAULT CHARACTER SET utf8 ;
USE `sistemasDeNotas` ;

-- -----------------------------------------------------
-- Table `sistemasDeNotas`.`Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistemasDeNotas`.`Curso` (
  `Id` VARCHAR(45) NOT NULL,
  `NomeCurso` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`));

-- -----------------------------------------------------
-- Table `sistemasDeNotas`.`Aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistemasDeNotas`.`Aluno` (
  `Id` VARCHAR(45) NOT NULL,
  `Matricula` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Curso_Id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Aluno_Curso_idx` (`Curso_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Aluno_Curso`
    FOREIGN KEY (`Curso_Id`)
    REFERENCES `sistemasDeNotas`.`Curso` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `sistemasDeNotas`.`Diciplinas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistemasDeNotas`.`Diciplinas` (
  `Id` VARCHAR(45) NOT NULL,
  `NomeDiciplina` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`));

-- -----------------------------------------------------
-- Table `sistemasDeNotas`.`CursoXDiciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistemasDeNotas`.`CursoXDiciplina` (
  `Id` VARCHAR(45) NOT NULL,
  `Diciplinas_Id` VARCHAR(45) NOT NULL,
  `Curso_Id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_CursoXDiciplina_Diciplinas1_idx` (`Diciplinas_Id` ASC) VISIBLE,
  INDEX `fk_CursoXDiciplina_Curso1_idx` (`Curso_Id` ASC) VISIBLE,
  CONSTRAINT `fk_CursoXDiciplina_Diciplinas1`
    FOREIGN KEY (`Diciplinas_Id`)
    REFERENCES `sistemasDeNotas`.`Diciplinas` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CursoXDiciplina_Curso1`
    FOREIGN KEY (`Curso_Id`)
    REFERENCES `sistemasDeNotas`.`Curso` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- -----------------------------------------------------
-- Table `sistemasDeNotas`.`Notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistemasDeNotas`.`Notas` (
  `Id` VARCHAR(45) NOT NULL,
  `Nota` DOUBLE NOT NULL,
  `Aluno_Id` VARCHAR(45) NOT NULL,
  `CursoXDiciplina_Id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Notas_Aluno1_idx` (`Aluno_Id` ASC) VISIBLE,
  INDEX `fk_Notas_CursoXDiciplina1_idx` (`CursoXDiciplina_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Notas_Aluno1`
    FOREIGN KEY (`Aluno_Id`)
    REFERENCES `sistemasDeNotas`.`Aluno` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Notas_CursoXDiciplina1`
    FOREIGN KEY (`CursoXDiciplina_Id`)
    REFERENCES `sistemasDeNotas`.`CursoXDiciplina` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
