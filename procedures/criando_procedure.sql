CREATE PROCEDURE incluir_segmercado
(p_ID IN NUMBER, p_DESCRICAO IN VARCHAR)
IS
BEGIN
    INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES (p_ID, UPPER(p_DESCRICAO));
    COMMIT;
END;

EXECUTE INCLUIR_SEGMERCADO(4, 'Farmaceuticos');

BEGIN
    INCLUIR_SEGMERCADO(5, 'Hoteleiros');
END;