--Aqui estão alguns exemplos de comandos SQL relacionados ao error state:

--BEGIN TRY: Este comando marca o início da área de código onde os erros serão verificados.
BEGIN TRY
   -- query que pode causar erro aqui
END TRY

--BEGIN CATCH: Este comando marca o início da área de código onde o erro será tratado.
BEGIN CATCH
   -- comandos para tratar o erro aqui
END CATCH

--RAISERROR: Este comando permite que o desenvolvedor gere um erro personalizado para ser tratado pelo error state.
RAISERROR ('Mensagem de erro personalizada', 16, 1)

--TRY-CATCH com transação: O uso de TRY-CATCH combinado com transações permite que o desenvolvedor garanta que os dados sejam mantidos consistentes, mesmo quando um erro ocorre.
BEGIN TRY
   BEGIN TRANSACTION
   -- query que pode causar erro aqui
   COMMIT TRANSACTION
END TRY
BEGIN CATCH
   ROLLBACK TRANSACTION
   -- comandos para tratar o erro aqui
END CATCH
