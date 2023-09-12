-- Substituir uma palavra específica em uma frase:
SELECT STUFF('Eu gosto de beber pizza', 12, 5, 'comer');
--Este exemplo retornaria a string "Eu gosto de beber pizza", substituindo a palavra "beber" por "comer".

--Substituir uma parte específica de um número:
SELECT STUFF('12345678', 5, 2, '00');
--Este exemplo retornaria a string "12340078", substituindo os dígitos "56" com "00".

--Substituir um caractere específico em uma string:
SELECT STUFF('abcdefg', 3, 1, 'x');
--Este exemplo retornaria a string "abxdefg", substituindo o caractere "c" com "x".


