--Alguns exemplos de comandos SQL relacionados a error severity incluem:

--RAISERROR: este comando permite que você gere um erro personalizado com um nível de severidade específico. Por exemplo, o comando abaixo gera um erro de severidade 16, com a mensagem "Estoque insuficiente":
RAISERROR('Estoque insuficiente', 16, 1)

--TRY-CATCH: este comando permite que você capture e manipule erros específicos. Por exemplo, o comando abaixo captura qualquer erro de severidade 10 ou superior e insere uma entrada no registro de erros:
BEGIN TRY
    -- comando que pode gerar um erro
END TRY
BEGIN CATCH
    IF ERROR_SEVERITY() >= 10
    BEGIN
        INSERT INTO ErrorLog(ErrorMessage, ErrorSeverity)
        VALUES (ERROR_MESSAGE(), ERROR_SEVERITY())
    END
END CATCH

--SET XACT_ABORT: este comando permite que você configure o comportamento de uma transação quando um erro de severidade elevada ocorre. Por exemplo, o comando abaixo configura o abortamento da transação quando um erro de severidade 12 ou superior ocorre:
SET XACT_ABORT ON


