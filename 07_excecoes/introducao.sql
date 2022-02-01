SET SERVEROUTPUT ON;

create or replace NONEDITIONABLE PROCEDURE incluir_cliente(
    p_ID IN CLIENTE.ID%type,
    p_RAZAO_SOCIAL IN CLIENTE.RAZAO_SOCIAL%type,
    p_CNPJ IN CLIENTE.CNPJ%type,
    p_SEGMERCADO_ID IN CLIENTE.SEGMERCADO_ID%type,
    p_FATURAMENTO_PREVISTO IN CLIENTE.FATURAMENTO_PREVISTO%type
)
IS
    v_CATEGORIA CLIENTE.CATEGORIA%type;
    v_CNPJ CLIENTE.CNPJ%type := p_CNPJ;
BEGIN
    formata_cnpj(v_CNPJ);
    v_CATEGORIA := categoria_cliente(p_FATURAMENTO_PREVISTO);
    INSERT INTO CLIENTE(ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO,
        FATURAMENTO_PREVISTO, CATEGORIA) VALUES (
            p_ID, p_RAZAO_SOCIAL, v_CNPJ,
            p_SEGMERCADO_ID,
            SYSDATE,
            p_FATURAMENTO_PREVISTO,
            v_CATEGORIA
        );
        COMMIT;
EXCEPTION
    WHEN dup_val_on_index THEN
        dbms_output.put_line('Cliente já cadastrado!!');
END;

EXECUTE incluir_cliente(1, 'Supermercado IJK', '67890', 1, 90000);
EXECUTE incluir_cliente(1, 'Supermercado IJK', '67890', 1, 90000);