DECLARE
    v_ID SEGMERCADO.ID%type := 2;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Atacado';
BEGIN
    INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES (v_ID, UPPER(v_DESCRICAO));
    COMMIT;
END;