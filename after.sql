CREATE TRIGGER update_employee_salary
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
  UPDATE Employee SET Salary = Salary + 1000 WHERE ID = NEW.ID;
END;
-- Neste exemplo, o gatilho atualiza o salário de um funcionário depois que um novo registro é inserido na tabela Funcionário. O gatilho usa a palavra-chave AFTER para especificar que deve ser executado após a ocorrência do evento de inserção.

CREATE TRIGGER update_salary
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
  UPDATE salary_history SET salary = NEW.salary WHERE employee_id = NEW.id;
END;
--Neste exemplo, o acionador atualiza a tabela de histórico de salários após a atualização de um registro na tabela de funcionários. A palavra-chave AFTER é usada para especificar que o gatilho deve ser executado após a ocorrência do evento de atualização.


