DDL_QUERY = '''
INSERT INTO Ingreso (idproveedor, idusuario, tipo_comprobante, serie_comprobante, num_comprobante, fecha, impuesto, total, estado)
VALUES
    (37, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-01-05', NULL, NULL, TRUE),
    (52, 9, 'Factura', 'A001', '000005', TIMESTAMP '2024-01-10', NULL, NULL, TRUE),
    (19, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-01-15', NULL, NULL, TRUE),
    (88, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-01-20', NULL, NULL, TRUE),
    (97, 9, 'Factura', 'A001', '000005', TIMESTAMP '2024-01-25', NULL, NULL, TRUE),
    (62, 9, 'Factura', 'A001', '000005', TIMESTAMP '2024-01-30', NULL, NULL, TRUE),
    (81, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-02-05', NULL, NULL, TRUE),
    (43, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-02-10', NULL, NULL, TRUE),
    (12, 9, 'Factura', 'A001', '000005', TIMESTAMP '2024-02-15', NULL, NULL, TRUE),
    (76, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-02-20', NULL, NULL, TRUE),
    (29, 9, 'Factura', 'A001', '000005', TIMESTAMP '2024-02-25', NULL, NULL, TRUE),
    (41, 9, 'Factura', 'A001', '000005', TIMESTAMP '2024-03-01', NULL, NULL, TRUE),
    (85, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-03-06', NULL, NULL, TRUE),
    (93, 9, 'Factura', 'A001', '000005', TIMESTAMP '2024-03-11', NULL, NULL, TRUE),
    (67, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-03-16', NULL, NULL, TRUE),
    (23, 9, 'Factura', 'A001', '000005', TIMESTAMP '2024-03-21', NULL, NULL, TRUE),
    (71, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-03-26', NULL, NULL, TRUE),
    (56, 9, 'Factura', 'A001', '000005', TIMESTAMP '2024-04-02', NULL, NULL, TRUE),
    (94, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-04-07', NULL, NULL, TRUE),
    (8, 7, 'Factura', 'A001', '000005', TIMESTAMP '2024-04-12', NULL, NULL, TRUE);
'''