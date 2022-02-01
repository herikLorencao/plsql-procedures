EXECUTE incluir_cliente(1, 'Mercearia XPTO', '12345', 1, 10000);
EXECUTE incluir_cliente(2, 'Padaria XPTO', '23456', 1, 5000);
EXECUTE incluir_cliente(3, 'Farmacia XPTO', '34567', 1, 30000);
EXECUTE incluir_cliente(4, 'Supermercado XPTO', '45678', 1, 10000);
EXECUTE incluir_cliente(5, 'Atacado XPTO', '56789', 1, 200000);

CREATE OR REPLACE PROCEDURE atualizar_cli_seg_mercado
(p_ID CLIENTE.ID%type, p_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type)
IS
BEGIN
    UPDATE CLIENTE SET SEGMERCADO_ID = p_SEGMERCADO_ID WHERE ID = p_ID;
    COMMIT;
END;