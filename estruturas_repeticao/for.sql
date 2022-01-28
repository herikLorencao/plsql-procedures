DECLARE
    v_SEGMENTO_MERCADO_ID SEGMERCADO.ID%type := 1;
BEGIN
    FOR v_I IN 1..6 LOOP
        atualizar_cli_seg_mercado(v_I, v_SEGMENTO_MERCADO_ID);
    END LOOP;
END;