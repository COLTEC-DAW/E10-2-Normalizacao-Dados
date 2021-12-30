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
  `Diciplinas_Id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Notas_Aluno1_idx` (`Aluno_Id` ASC) VISIBLE,
  INDEX `fk_Notas_Diciplinas1_idx` (`Diciplinas_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Notas_Aluno1`
    FOREIGN KEY (`Aluno_Id`)
    REFERENCES `sistemasDeNotas`.`Aluno` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
 CONSTRAINT `fk_Notas_Diciplinas1`
    FOREIGN KEY (`Diciplinas_Id`)
    REFERENCES `sistemasDeNotas`.`Diciplinas` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
-- FIM CREATE

INSERT INTO `sistemasdenotas`.`curso`
(`Id`,
`NomeCurso`)
VALUES
('d1f6c8e4-3c62-4223-8df6-f5df91dd8b8d',
'Desenvolvimento de sistemas');

INSERT INTO `sistemasdenotas`.`curso`
(`Id`,
`NomeCurso`)
VALUES
('8e8cc76a-3175-448e-b530-dc50154117a1',
'Design');

INSERT INTO `sistemasdenotas`.`curso`
(`Id`,
`NomeCurso`)
VALUES
('14dee509-6993-4b7e-844c-60f6edcaa214',
'Eletrônica');

INSERT INTO `sistemasdenotas`.`curso`
(`Id`,
`NomeCurso`)
VALUES
('b82a88ef-0b0b-4443-963b-8c3a5d0106fc',
'Automação Industrial');

-- FIM CURSO INSERT

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('101f9209-1b93-4c5c-b7d9-946248294b62',
'Domótica e Robótica');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('bd2e4ff4-2ced-4d7b-8063-0849fc78f73f',
'Design de Produtos');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('254b046b-12b4-4977-b635-5f3bdfd10208',
'Desenvolvimento de Aplicacoes Web');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('299fcba3-63ca-4e71-ad37-a9edaa231a7a',
'Circuitos Digitais');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('b4d32061-6f68-46d0-884b-64b797456bc1',
'Empreendedorismo');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('9147bad3-e3af-4ac5-98c6-c68f12816f9b',
'Desenvolvimento de Produtos');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('6df4bbdd-01e7-4da0-a55e-a7fa146de236',
'Programacao Orientada a Objetos');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('8ccfcc35-3d83-45c6-b069-7196f790e416',
'Sistemas Embarcados');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('3c653dff-0ea9-4f47-9392-4c41a628ca05',
'Educação Física');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('39eff633-64af-4f91-9ef8-3d40ff592982',
'Marketing');

INSERT INTO `sistemasdenotas`.`diciplinas`
(`Id`,
`NomeDiciplina`)
VALUES
('256a8f6d-0dc7-4002-bd86-e7004e3e28d5',
'Sistemas operacionais');

-- FIM CURSO INSERT

-- Automação Industrial

-- Domótica e Robótica

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('bf1b29f5-03c7-4b4f-9820-b72dcc5ac2b3',
'101f9209-1b93-4c5c-b7d9-946248294b62',
'b82a88ef-0b0b-4443-963b-8c3a5d0106fc');

-- Empreendedorismo

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('372553bd-c4e1-4e76-acf5-14c4ccde4af1',
'b4d32061-6f68-46d0-884b-64b797456bc1',
'b82a88ef-0b0b-4443-963b-8c3a5d0106fc');

-- Educação Física

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('9c74adfc-64bd-428a-84c0-f72b1ee87f8b',
'3c653dff-0ea9-4f47-9392-4c41a628ca05',
'b82a88ef-0b0b-4443-963b-8c3a5d0106fc');

-- FIM

--   Design

--  Design de Produtos

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('c48294cd-8d06-4a4a-ab52-8aa2b1140b6b',
'bd2e4ff4-2ced-4d7b-8063-0849fc78f73f',
'8e8cc76a-3175-448e-b530-dc50154117a1');

--  Desenvolvimento de Produtos

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('3c9282fb-9b44-4fdd-b802-59c92f8ba4c3',
'9147bad3-e3af-4ac5-98c6-c68f12816f9b',
'8e8cc76a-3175-448e-b530-dc50154117a1');

--  Marketing

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('ef8d3a7a-00ee-4b71-9026-c18b70207331',
'39eff633-64af-4f91-9ef8-3d40ff592982',
'8e8cc76a-3175-448e-b530-dc50154117a1');

-- FIM

-- Desenvolvimento de sistemas

--  Desenvolvimento de Aplicacoes Web

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('aa272b9c-255a-486f-8bb3-32adbc601fff',
'254b046b-12b4-4977-b635-5f3bdfd10208',
'd1f6c8e4-3c62-4223-8df6-f5df91dd8b8d');

--  Programacao Orientada a Objetos

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('21c5bc90-01a9-4976-9144-4d8c9e63ba16',
'6df4bbdd-01e7-4da0-a55e-a7fa146de236',
'd1f6c8e4-3c62-4223-8df6-f5df91dd8b8d');

--  Sistemas operacionais

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('7d1ce11a-42cb-40ec-ad8e-5d286d71d8b5',
'256a8f6d-0dc7-4002-bd86-e7004e3e28d5',
'd1f6c8e4-3c62-4223-8df6-f5df91dd8b8d');

--  Empreendedorismo

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('ea124486-6795-4e5d-9f0c-163fb5a9e42f',
'b4d32061-6f68-46d0-884b-64b797456bc1',
'd1f6c8e4-3c62-4223-8df6-f5df91dd8b8d');

-- FIM

-- Eletrônica

--  Circuitos Digitais

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('c7893d07-5bfa-46a9-8e26-1cbbd66cc1b1',
'299fcba3-63ca-4e71-ad37-a9edaa231a7a',
'14dee509-6993-4b7e-844c-60f6edcaa214');

--  Sistemas Embarcados

INSERT INTO `sistemasdenotas`.`cursoxdiciplina`
(`Id`,
`Diciplinas_Id`,
`Curso_Id`)
VALUES
('15cc864a-6759-4a12-8405-8d7f3f7566be',
'8ccfcc35-3d83-45c6-b069-7196f790e416',
'14dee509-6993-4b7e-844c-60f6edcaa214');

-- FIM

-- FIM CURSOXDICIPLICA INSERT

INSERT INTO `sistemasdenotas`.`aluno`
(`Id`,
`Matricula`,
`Nome`,
`Curso_Id`)
VALUES
('e618c955-df46-47df-9744-86c4d64b4d7e',
'2012786310',
'Cristina',
'b82a88ef-0b0b-4443-963b-8c3a5d0106fc');

INSERT INTO `sistemasdenotas`.`aluno`
(`Id`,
`Matricula`,
`Nome`,
`Curso_Id`)
VALUES
('603bf62f-22b5-4ce4-894e-146ee39f49c5',
'2018321098',
'Iago',
'8e8cc76a-3175-448e-b530-dc50154117a1');

INSERT INTO `sistemasdenotas`.`aluno`
(`Id`,
`Matricula`,
`Nome`,
`Curso_Id`)
VALUES
('3c48c691-48a6-4793-9fa6-0da32eeca1ee',
'2021231202',
'Gabriela',
'd1f6c8e4-3c62-4223-8df6-f5df91dd8b8d');

INSERT INTO `sistemasdenotas`.`aluno`
(`Id`,
`Matricula`,
`Nome`,
`Curso_Id`)
VALUES
('e2e0298f-46f6-4e8e-b665-14b39ded1d47',
'2193109187',
'Jair',
'14dee509-6993-4b7e-844c-60f6edcaa214');

-- FIM ALUNO INSERT


-- CRISTINA 

--  Domótica e Robótica
INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('969e2b30-e381-4320-a1f3-d0e3d2ddb9a1',
74,
'e618c955-df46-47df-9744-86c4d64b4d7e',
'101f9209-1b93-4c5c-b7d9-946248294b62');

-- Empreendedorismo
INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('02e2d976-1154-4708-8907-d1db72477251',
93,
'e618c955-df46-47df-9744-86c4d64b4d7e',
'b4d32061-6f68-46d0-884b-64b797456bc1');
    

-- Educação Física
INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('328644dd-53c7-486d-b228-0b50c2e77858',
95,
'e618c955-df46-47df-9744-86c4d64b4d7e',
'3c653dff-0ea9-4f47-9392-4c41a628ca05');

    
-- FIM

-- IAGO

-- Design de Produtos	
INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('63c74b4a-2cc4-4808-b5eb-b2a1074a11f2',
100,
'603bf62f-22b5-4ce4-894e-146ee39f49c5',
'bd2e4ff4-2ced-4d7b-8063-0849fc78f73f');

--  Desenvolvimento de Produtos	

INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('3ee5d84f-f5c7-4e65-8c4f-d0a602cc15de',
100,
'603bf62f-22b5-4ce4-894e-146ee39f49c5',
'9147bad3-e3af-4ac5-98c6-c68f12816f9b');

--  Marketing	

INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('8895d67e-b0bb-483b-9107-ebfde2f4b668',
100,
'603bf62f-22b5-4ce4-894e-146ee39f49c5',
'39eff633-64af-4f91-9ef8-3d40ff592982');

-- FIM

-- GABRIELA

-- Desenvolvimento de Aplicacoes Web

INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('d413fc1a-85f6-416a-ad79-f1b14702fd12',
82,
'3c48c691-48a6-4793-9fa6-0da32eeca1ee',
'254b046b-12b4-4977-b635-5f3bdfd10208');	 

-- Programacao Orientada a Objetos

INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('aad19c7d-d1c8-4e00-bc85-2c63898cf8cd',
93,
'3c48c691-48a6-4793-9fa6-0da32eeca1ee',
'6df4bbdd-01e7-4da0-a55e-a7fa146de236');

-- Sistemas operacionais

INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('ee6a1d13-6a2f-4865-9865-c0d5fbeb77fb',
100,
'3c48c691-48a6-4793-9fa6-0da32eeca1ee',
'256a8f6d-0dc7-4002-bd86-e7004e3e28d5');

-- Empreendedorismo

INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('0307af83-20f7-4484-981e-88f3f9c4a1e0',
100,
'3c48c691-48a6-4793-9fa6-0da32eeca1ee',
'b4d32061-6f68-46d0-884b-64b797456bc1');

-- FIM

-- JAIR

-- Circuitos Digitais

INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('49fed56e-44f7-41bd-9ee8-a15f1f67f37e',
85,
'e2e0298f-46f6-4e8e-b665-14b39ded1d47',
'299fcba3-63ca-4e71-ad37-a9edaa231a7a');

-- Sistemas Embarcados

INSERT INTO `sistemasdenotas`.`notas`
(`Id`,
`Nota`,
`Aluno_Id`,
`Diciplinas_Id`)
VALUES
('7f71f902-fdbc-4455-9c3f-cff9968922a6',
100,
'e2e0298f-46f6-4e8e-b665-14b39ded1d47',
'8ccfcc35-3d83-45c6-b069-7196f790e416');

-- FIM

-- FIM NOTA INSERT