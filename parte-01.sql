CREATE TABLE redes_sociais(
    id BIGSERIAL NOT NULL UNIQUE,
    nome VARCHAR(150)NOT NULL UNIQUE
);

CREATE TABLE enderecos(
    id BIGSERIAL NOT NULL UNIQUE,
    rua VARCHAR NOT NULL,
    pais VARCHAR(100)NOT NULL,
    cidade VARCHAR(100)NOT NULL
);

CREATE TABLE usuarios(
    id BIGSERIAL NOT NULL UNIQUE,
    nome VARCHAR(100),
    email VARCHAR NOT NULL,
    senha VARCHAR NOT NULL,
    endereco_id INTEGER NOT NULL UNIQUE, 
    FOREIGN KEY (endereco_id) REFERENCES enderecos(id)    
);

CREATE TABLE usuario_redes_sociais(
    id BIGSERIAL NOT NULL UNIQUE ,
    usuario_id INTEGER NOT NULL,
    redes_sociais_id INTEGER NOT NULL,
	FOREIGN KEY (redes_sociais_id) REFERENCES redes_sociais(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);