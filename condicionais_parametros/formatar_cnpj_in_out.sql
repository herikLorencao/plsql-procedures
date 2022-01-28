CREATE OR REPLACE PROCEDURE formata_cnpj (
    p_CNPJ IN OUT CLIENTE.CNPJ%type
)
IS
BEGIN
    p_CNPJ := SUBSTR(p_CNPJ, 1, 3) || '/' || SUBSTR(p_CNPJ, 4, 2);
END;

VARIABLE g_CNPJ VARCHAR2(10);

EXECUTE :g_CNPJ := '12345';

EXECUTE formata_cnpj(:g_CNPJ);

PRINT :g_CNPJ;