DECLARE
    v_SEGMENTO_MERCADO_ID SEGMERCADO.ID%type := 1;
BEGIN
    FOR v_I IN 1..6 LOOP
        atualizar_cli_seg_mercado(p_SEGMERCADO_ID => v_SEGMENTO_MERCADO_ID, p_ID => v_I);
    END LOOP;
END;