CREATE TABLE [Personas](  
    nombre TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE [Personajes](  
    nombre_ingame text NOT NULL PRIMARY key,
    nombre_personas TEXT NOT NULL,
    caracteristicas TEXT NOT NULL,
    FOREIGN key (nombre_personas)REFERENCES Personas(nombre)
     ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE [anecdotas](  
    titulo TEXT NOT NULL PRIMARY KEY,
    nombreingame TEXT NOT NULL,
    FOREIGN key (nombreingame)REFERENCES Personajes(nombre_ingame)
      ON UPDATE CASCADE
    ON DELETE CASCADE
    );

CREATE Table [capitulo](
    titulocap TEXT NOT NULL PRIMARY key,
    nombre_ingame TEXT NOT null,    
    tituloanec text not null,
    FOREIGN KEY (nombre_ingame)REFERENCES Personajes(nombre_ingame)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (tituloanec)REFERENCES anecdotas(titulo)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    );


    


INSERT INTO Personas(nombre)
VALUES('jorge');

INSERT INTO Personas(nombre)
VALUES('alberto');

INSERT INTO Personas(nombre)
VALUES('conchi');

