-- Furniture
INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (1, 'FURN1', 'Elegant Office Desk', 299.99, 10, 'A stylish and functional desk for your office.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (1, 'FURN2', 'Leather Sofa', 799.99, 5, 'A comfortable leather sofa for your living room.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (1, 'FURN3', 'Wooden Dining Table', 499.99, 8, 'A beautiful wooden dining table for your home.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (1, 'FURN4', 'Executive Chair', 199.99, 12, 'An ergonomic chair for your office.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (1, 'FURN5', 'Bookshelf', 149.99, 6, 'A sturdy bookshelf to organize your books.', '', true);


-- Toy
INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (2, 'TOY1', 'Building Blocks Set', 49.99, 20, 'A set of colorful building blocks for kids.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (2, 'TOY2', 'Remote Control Car', 39.99, 15, 'An exciting remote control car for children.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (2, 'TOY3', 'Board Game: Monopoly', 24.99, 10, 'The classic Monopoly board game for family fun.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (2, 'TOY4', 'Puzzle Set', 14.99, 25, 'A set of challenging puzzles for all ages.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (2, 'TOY5', 'Plush Teddy Bear', 9.99, 18, 'A soft and cuddly teddy bear for kids.', '', true);


-- Health
INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (3, 'HEALTH1', 'Digital Thermometer', 19.99, 30, 'A reliable digital thermometer for accurate temperature measurement.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (3, 'HEALTH2', 'Blood Pressure Monitor', 49.99, 15, 'A convenient blood pressure monitor for home use.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (3, 'HEALTH3', 'First Aid Kit', 39.99, 8, 'A comprehensive first aid kit for emergencies.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (3, 'HEALTH4', 'Fitness Tracker', 79.99, 20, 'A wearable fitness tracker to monitor your health and activity.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (3, 'HEALTH5', 'Multivitamin Tablets', 9.99, 50, 'A pack of multivitamin tablets to support overall health.', '', true);


-- Car
INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (4, 'CAR1', 'Car Seat Covers', 49.99, 10, 'Stylish and comfortable car seat covers.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (4, 'CAR2', 'Car Floor Mats', 29.99, 15, 'Durable and easy-to-clean car floor mats.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (4, 'CAR3', 'Car Air Freshener', 4.99, 20, 'Keep your car smelling fresh with this air freshener.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (4, 'CAR4', 'Car Phone Holder', 14.99, 8, 'Securely mount your phone in your car.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (4, 'CAR5', 'Car Cleaning Kit', 24.99, 12, 'A complete kit for cleaning and detailing your car.', '', true);


-- Electronics
INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (5, 'ELEC1', 'Smart TV', 799.99, 5, 'A high-definition smart TV for an immersive viewing experience.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (5, 'ELEC2', 'Wireless Headphones', 149.99, 10, 'Enjoy music without the hassle of wires with these wireless headphones.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (5, 'ELEC3', 'Digital Camera', 399.99, 8, 'Capture stunning photos with this advanced digital camera.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (5, 'ELEC4', 'Laptop Computer', 999.99, 15, 'A powerful laptop computer for work and entertainment.', '', true);

INSERT INTO Articulo (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)
VALUES (5, 'ELEC5', 'Portable Bluetooth Speaker', 79.99, 20, 'Take your music on the go with this portable Bluetooth speaker.', '', true);

UPDATE Articulo SET stock = stock + 20;
UPDATE Articulo SET stock = stock * 76;