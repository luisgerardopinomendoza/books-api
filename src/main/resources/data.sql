DROP TABLE IF EXISTS book;

-- Crear la tabla Book
CREATE TABLE book (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL
);

-- Insertar 20 registros en la tabla Book
INSERT INTO book (title, author) VALUES ('El Quijote', 'Miguel de Cervantes');
INSERT INTO book (title, author) VALUES ('Cien años de soledad', 'Gabriel García Márquez');
INSERT INTO book (title, author) VALUES ('Orgullo y prejuicio', 'Jane Austen');
INSERT INTO book (title, author) VALUES ('1984', 'George Orwell');
INSERT INTO book (title, author) VALUES ('Moby Dick', 'Herman Melville');
INSERT INTO book (title, author) VALUES ('El gran Gatsby', 'F. Scott Fitzgerald');
INSERT INTO book (title, author) VALUES ('Crimen y castigo', 'Fiódor Dostoyevski');
INSERT INTO book (title, author) VALUES ('El amor en los tiempos del cólera', 'Gabriel García Márquez');
INSERT INTO book (title, author) VALUES ('La odisea', 'Homero');
INSERT INTO book (title, author) VALUES ('Donde los árboles cantan', 'Laura Gallego');
INSERT INTO book (title, author) VALUES ('Los miserables', 'Victor Hugo');
INSERT INTO book (title, author) VALUES ('El principito', 'Antoine de Saint-Exupéry');
INSERT INTO book (title, author) VALUES ('El túnel', 'Ernesto Sabato');
INSERT INTO book (title, author) VALUES ('Fahrenheit 451', 'Ray Bradbury');
INSERT INTO book (title, author) VALUES ('Rayuela', 'Julio Cortázar');
INSERT INTO book (title, author) VALUES ('El retrato de Dorian Gray', 'Oscar Wilde');
INSERT INTO book (title, author) VALUES ('La casa de los espíritus', 'Isabel Allende');
INSERT INTO book (title, author) VALUES ('El guardián entre el centeno', 'J.D. Salinger');
INSERT INTO book (title, author) VALUES ('La sombra del viento', 'Carlos Ruiz Zafón');
INSERT INTO book (title, author) VALUES ('El alquimista', 'Paulo Coelho');