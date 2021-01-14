USE academia;

DROP TABLE IF EXISTS tipo_documento;
DROP TABLE IF EXISTS tipo_actores;
DROP TABLE IF EXISTS estado_actores;
DROP TABLE IF EXISTS modulos;
DROP TABLE IF EXISTS actores;

CREATE TABLE tipo_documento(
    codigo VARCHAR(3) PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE tipo_actores(
    id INT(5) UNSIGNED AUTO_INCREMENT,
    perfil VARCHAR(150),
    PRIMARY KEY (id)
);

CREATE TABLE estado_actores(
    id INTEGER(5) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(30) 
) ENGINE=MyISAM;

CREATE TABLE modulos(
    id INT(5),
    modulo VARCHAR(255),
    mo VARCHAR(10)
) ENGINE=InnoDB;

ALTER TABLE modulos
ADD PRIMARY KEY(id);

ALTER TABLE modulos
DROP COLUMN mo;

ALTER TABLE modulos
ADD COLUMN `mod` VARCHAR(10);

CREATE TABLE actores(
    id INT(5) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    documento VARCHAR(20) NOT NULL UNIQUE,
    tipo_documento VARCHAR(3) NOT NULL,
    nombres VARCHAR(255),
    apellidos VARCHAR(255),
    contrasena VARCHAR(100) NOT NULL,
    correo VARCHAR(255) NOT NULL DEFAULT 'correo@dominio.com',
    telefono_celular VARCHAR(30) COMMENT 'Teléfono celular del estudiante',
    numero_expediente VARCHAR(255) NOT NULL UNIQUE,
    genero ENUM('hombre','mujer') NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    estado_actor_id INT(5),
    institucion_id INT(5),
    tipo_actor_id INT(5),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT `fk_estado_actor` FOREIGN KEY `estado_actor_id` REFERENCES `estado_actores`(`id`)    
) ENGINE=InnoDB;