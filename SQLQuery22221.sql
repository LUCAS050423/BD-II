CREATE DATABASE bd_univ
go

 CREATE TABLE Aluno 
( 
 Nome VARCHAR,  
 CPF INT,  
 RG INT,  
 CodAluno INT,  
 etnia INT,  
 genero INT,  
 logradouro FLOAT,  
 bairro VARCHAR,  
 cidade VARCHAR,  
 estado VARCHAR,  
 cep FLOAT,  
 complemento INT,  
 numero INT,  
); 
 
 CREATE TABLE Campi 
( 
 CodCampi INT PRIMARY KEY,  
 laboratorio VARCHAR, 
 biblioteca VARCHAR,
 predios VARCHAR,
); 

CREATE TABLE Tbcurso 
( 
 CodCurso INT PRIMARY KEY,  
 CodMatricula INT ADD FOREIGN KEY(CodMatricula) REFERENCES CodMatricula (CodMatricula),  
 CodCampi INT ADD FOREIGN KEY(CodCampi) REFERENCES Campi (CodCampi),  
); 

CREATE TABLE Turma 
( 
 CodTurma INT PRIMARY KEY,  
 AnoFormacao INT,  
 NumSala INT,  
 TbMatricula INT ADD FOREIGN KEY(TbMatricula) REFERENCES CodMatricula (TbMatricula),  
 idTbProfessorTurma INT ADD FOREIGN KEY(idTbProfessorTurma) REFERENCES ProfessorTurma (idTbProfessorTurma),  
); 



CREATE TABLE Professor 
( 
 Nome INT,  
 CPF INT,  
 RG INT,  
 CodProfessor INT,  
); 

CREATE TABLE CodMatricula 
( 
 CodMatricula INT PRIMARY KEY,  
 TbAluno INT ADD FOREIGN KEY(TbAluno) REFERENCES Aluno (TbAluno),  
 Data INT,  
); 

CREATE TABLE Disciplina 
( 
 CodDisciplina INT PRIMARY KEY,  
 Nome VARCHAR,  
 CodTurma INT ADD FOREIGN KEY(CodTurma) REFERENCES Turma (CodTurma),  
 CodDisciplinaProfessor INT ADD FOREIGN KEY(CodDisciplinaProfessor) REFERENCES DisciplinaProfessor (CodDisciplinaProfessor),  
); 

CREATE TABLE DisciplinaProfessor 
( 
 CodDisciplinaProfessor INT PRIMARY KEY,  
 CodProfessor INT ADD FOREIGN KEY(CodProfessor) REFERENCES Professor (CodProfessor),  
); 

CREATE TABLE ProfessorTurma 
( 
 CodProfessorTurma INT PRIMARY KEY,  
 idTbProfessor INT ADD FOREIGN KEY(idTbProfessor) REFERENCES Professor (idTbProfessor),  
); 


