DECLARE
    CURSOR cur_CLIENTE IS SELECT ID FROM CLIENTE;
    v_SEGMERCADO_ID SEGMERCADO.ID%type := 1;
BEGIN
    FOR cur_rec IN cur_CLIENTE LOOP
        atualizar_cli_seg_mercado(cur_rec.ID, v_SEGMERCADO_ID);
    END LOOP;
END;