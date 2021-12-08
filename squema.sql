CREATE TABLE [Personas](  
    nombre TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE [Personajes](  
    nombre_ingame text NOT NULL PRIMARY key,
    nombre_personas TEXT NOT NULL,
    caracteristicas TEXT NOT NULL,
    FOREIGN key (nombre_personas)REFERENCES Personas(nombre)
);

CREATE TABLE [anecdotas](  
    titulo TEXT NOT NULL PRIMARY KEY,
    nombreingame TEXT NOT NULL,
    FOREIGN key (nombreingame)REFERENCES Personajes(nombre_ingame)
);

CREATE Table [capitulo](
    titulocap TEXT NOT NULL PRIMARY key,
    nombre_ingame TEXT NOT null,    
    tituloanec text not null,
    FOREIGN KEY (nombre_ingame)REFERENCES Personajes(nombre_ingame),
    FOREIGN KEY (tituloanec)REFERENCES anecdotas(titulo)
);
