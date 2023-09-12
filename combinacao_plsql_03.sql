DECLARE
   @num INT = 5;
BEGIN
   IF @num > 10 
   BEGIN
      PRINT 'Num é maior que 10';
   END
   ELSE
   BEGIN
      PRINT 'Num é menor que 10';
   END
END
--Neste exemplo, uma variável chamada @num é declarada e inicializada com o valor 5. Em seguida, uma estrutura de controle de fluxo IF é usada para verificar se o valor de @num é maior que 10. Se for verdadeiro, a mensagem "Num é maior que 10" é exibida. Caso contrário, a mensagem "Num é menor que 10" é exibida.
DECLARE
   @salario DECIMAL(10,2) = 5000.00;
BEGIN
   IF @salario >= 6000.00 
   BEGIN
      PRINT 'Você ganha mais que 6000';
   END
   ELSE
   BEGIN
      PRINT 'Você ganha menos que 6000';
   END
END
--Neste exemplo, uma variável chamada @salario é declarada e inicializada com o valor 5000.00. Em seguida, uma estrutura de controle de fluxo IF é usada para verificar se o valor de @salario é maior ou igual a 6000.00. Se for verdadeiro, a mensagem "Você ganha mais que 6000" é exibida. Caso contrário, a mensagem "Você ganha menos que 6000" é exibida.

