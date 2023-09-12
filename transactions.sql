
--Um exemplo onde aplicamos uma transação de commit. Aqui queremos atualizar dados na tabela TbContas. Se não houver erros a transação é 'comitada', ao contrário todos registros alterados voltam atrás com o 'rollback'

BEGIN TRANSACTION

UPDATE FROM TbContaCorrente
SET ContaSaldo= 10.000
WHERE ContaSaldo < 50
IF @@ERROR = 0
COMMIT
ELSE
ROLLBACK
END

----------------------------
BEGIN TRANSACTION
UPDATE FROM TbContas
SET NuSaldo= 10.000
WHERE NuSaldo < 50
SAVE TRANSACTION INS_TBLOG INSERT INTO tblog SELECT NuSaldo, IdConta From Deleted
COMMIT
--No exemplo 3 estamos criando uma transação que irar mudar todos os saldos de quem possui o valor menor que 50 para 10.000, onde estamos criando um save point para garantir que as informações antigas sejam inseridas na tabela de log do sistema para garantir a integridade da informações, caso futuramente tenha sido feita alguma alteração que não deveria ocorrer.

