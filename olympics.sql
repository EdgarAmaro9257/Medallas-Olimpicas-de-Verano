-- Creando nueva tabla
CREATE TABLE medals (
    player_id INT,
    Name VARCHAR(255),
    Sex VARCHAR(10),
    Team VARCHAR(255),
    NOC VARCHAR(3),
    Year INT,
    Season VARCHAR(10),
    City VARCHAR(255),
    Sport VARCHAR(255),
    Event VARCHAR(255),
    Medal VARCHAR(50)
);

SHOW VARIABLES LIKE 'secure_file_priv';

SELECT * FROM medals;

-- Cargar los datos desde un archivo CSV en MySQL
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olympics_dataset.csv'
INTO TABLE medals
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Seleccionando tabla
SELECT * FROM medals;

-- Medallas totales por ciudad
SELECT City, COUNT(*) as Total_Medals
FROM medals
GROUP BY City
ORDER BY Total_Medals DESC;

-- Medallas por deporte en un año específico
SELECT Sport, COUNT(*) as Total_Medals
FROM medals
WHERE Year = 2020
GROUP BY Sport
ORDER BY Total_Medals DESC;











