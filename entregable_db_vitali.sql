CREATE DATABASE IF NOT EXISTS `entregable_db_vitali`;
USE `entregable_db_vitali`;

CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `titulo` VARCHAR(255) NOT NULL,
   `fecha_creacion` DATE NOT NULL,
   `fecha_modificacion` DATE NOT NULL,
   `descripcion` TEXT NOT NULL,
   `categoria_id` INT NOT NULL,
   `eliminar` TINYINT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categoria` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `tipo` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `usuarios_notas` (
   `id` INT,
   `usuario_id` INT,
   `nota_id` INT,
   PRIMARY KEY (`id`)
);

-- notas --
INSERT TO entregable_db_vitali.notas(id,titulo, fecha_creacion, fecha_modificacion, descripcion, categoria_id, eliminar),
(1,"sacar la basura", "2021-10-05", "2021-10-15", "lunes y martes residuos secos", "1", "0"),
(2,"mi elemento", "2021-10-12", "2021-10-12", "celeste carballo y guillermo bonetto", "2", "0"),
(3,"the tower of montevideo", "2021-10-17", "2021-10-17", "ultimo sencillo de damon albarn", "2", "0"),
(4,"zapatillas a arreglar", "2021-10-22", "2021-10-22", "llevar las zapatillas a arreglar urquiza 1200", "1", "0"),
(5,"muestra en el jardin", "2021-10-25", "2021-10-25", "salvador tiene muestra de arte en el jardin", "1", "0"),
(6,"caloncho", "2021-10-25", "2021-10-25", "escuchar el ultimo disco de caloncho", "2", "0"),
(7,"semillas", "2021-10-26", "2021-10-26", "comprar semillas y cereales", "3", "0"),
(8,"promocion", "2021-10-26", "2021-10-26", "aprovechar el descuento del lunes", "3", "0"),
(9,"base de datos", "2021-11-03", "2021-11-03", "entrega de tarea individual de base de datos", "4", "0"),
(10,"express", "2021-11-01", "2021-11-01", "clase de consulta para repasar todo express", "4", "0"),


-- categorias --
INSERT TO entregable_db_vitali.categoria(id,tipo)
(1,"tareas pendientes")
(2,"musica")
(3,"supermercado")
(4,"estudio")



ALTER TABLE `notas` ADD CONSTRAINT `FK_c5a0450c-f408-4ecf-a087-5f73a6c8f3ae` FOREIGN KEY (`categoria_id`) REFERENCES `categoria`(`id`)  ;

ALTER TABLE `usuarios_notas` ADD CONSTRAINT `FK_f07d477d-71f0-4343-9c91-3b244d996694` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `usuarios_notas` ADD CONSTRAINT `FK_689b47bd-b2bf-43c8-9400-7e9744d3fb69` FOREIGN KEY (`nota_id`) REFERENCES `notas`(`id`)  ;
