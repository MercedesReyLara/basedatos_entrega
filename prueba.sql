CREATE TABLE personas(
    id INTEGER NOT NULL UNIQUE,
    nombre TEXT NOT NULL,
);
CREATE TABLE anecdotas(
    id INT NOT NULL UNIQUE,
    titulo TEXT,
);
CREATE TABLE personajes(
    id INTEGER NOT NULL UNIQUE,
    nombre TEXT,
    tipo TEXT,
    caracteristicas TEXT,
    id_personaje INT,
    FOREIGN KEY(id_personaje)REFERENCES personajes(id) ON DELETE SET NULL
);
CREATE TABLE capitulos(
    id INT NOT NULL UNIQUE,
    nombre TEXT
);
CREATE TABLE mn_personajes_anecdotas(
	id_personaje INT NOT NULL UNIQUE,
	id_anecdotas INT NOT NULL UNIQUE,
	FOREIGN KEY(id_personaje)REFERENCES personajes(id) ON DELETE SET NULL,
	FOREIGN KEY(id_anecdotas)REFERENCES anecdotas(id) ON DELETE SET NULL
);
CREATE TABLE mn_capitulos_anecdotas(
	id_capitulos INT NOT NULL UNIQUE,
	id_anecdotas INT NOT NULL UNIQUE,
	FOREIGN KEY(id_capitulos)REFERENCES capitulos(id) ON DELETE SET NULL,
	FOREIGN KEY(id_anecdotas)REFERENCES anecdotas(id) ON DELETE SET NULL
);
CREATE TABLE mn_capitulos_personajes(
	id_capitulos INT NOT NULL UNIQUE,
	id_personajes INT NOT NULL UNIQUE,
	FOREIGN KEY(id_capitulos)REFERENCES capitulos(id) ON DELETE SET NULL,
	FOREIGN KEY(id_personajes)REFERENCES personajes(id) ON DELETE SET NULL
);