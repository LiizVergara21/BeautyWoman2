CREATE DATABASE luna_beauty;

USE luna_beauty;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    imagen VARCHAR(255),
    existencia INT DEFAULT 0
);

INSERT INTO productos
(nombre, descripcion, precio, categoria, imagen, existencia)
VALUES
('Labial Rosa', 'Labial de larga duración', 199.00, 'Labios', 'labial.jpg', 20),

('Paleta Nude', 'Paleta de sombras en tonos nude', 399.00, 'Ojos', 'paleta.jpg', 15),

('Rubor Peach', 'Rubor en tono durazno', 249.00, 'Rostro', 'rubor.jpg', 25),

('Base Natural', 'Base de cobertura media', 329.00, 'Rostro', 'base.jpg', 18);