DECLARE
    v_SEGMENTO_MERCADO_ID SEGMERCADO.ID%type := 2;
    v_I NUMBER(3) := 1;
BEGIN
    LOOP
        atualizar_cli_seg_mercado(v_I, v_SEGMENTO_MERCADO_ID);
        v_I := v_I + 1;
    EXIT WHEN v_I > 5;
    END LOOP;
END;