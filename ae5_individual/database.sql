-- Active: 1755651853873@@127.0.0.1@3306@m7_ae5_individual
CREATE DATABASE IF NOT EXISTS m7_ae5_individual;

USE m7_ae5_individual;

DELIMITER //

CREATE PROCEDURE obtener_productos_por_precio(IN precio_minimo DECIMAL(5,2))
BEGIN
    SELECT * FROM registros_ORM_producto WHERE precio >= precio_minimo;
END //

DELIMITER ;