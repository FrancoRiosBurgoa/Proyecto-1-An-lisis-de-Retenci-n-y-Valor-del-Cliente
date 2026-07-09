-- SCRIPT DE ESTRUCTURA (estructura.sql)

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY,
    nombre VARCHAR(50),
    pais VARCHAR(50),
    fecha_registro DATE,
    estado_cuenta VARCHAR(20) -- 'Activo' o 'Cancelado'
);

CREATE TABLE suscripciones (
    id_suscripcion INT PRIMARY KEY,
    id_usuario INT,
    tipo_plan VARCHAR(20), -- 'Basic', 'Standard', 'Premium'
    precio_mensual DECIMAL(10,2),
    horas_reproduccion_mes INT
);

-- Insertar registros de prueba
INSERT INTO usuarios VALUES 
(1, 'Sofía Martinez', 'Argentina', '2025-01-15', 'Activo'),
(2, 'Mateo Silva', 'Chile', '2025-02-10', 'Activo'),
(3, 'Lucas Pereyra', 'Uruguay', '2025-03-01', 'Cancelado'),
(4, 'Valentina Gomez', 'Argentina', '2025-03-15', 'Activo'),
(5, 'Diego Rossi', 'Chile', '2025-04-20', 'Cancelado'),
(6, 'Elena Fernandez', 'Argentina', '2025-05-02', 'Activo');

INSERT INTO suscripciones VALUES 
(101, 1, 'Premium', 15.99, 120),
(102, 2, 'Standard', 11.99, 45),
(103, 3, 'Basic', 7.99, 5),
(104, 4, 'Premium', 15.99, 180),
(105, 5, 'Basic', 7.99, 2),
(106, 6, 'Standard', 11.99, 0); -- Usuario activo pero con cero uso
