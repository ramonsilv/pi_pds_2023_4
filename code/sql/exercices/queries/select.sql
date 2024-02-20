--a) Mostrar todas as salas ordenadas pelo nome
SELECT nome_sala FROM salas ORDER BY nome_sala;

--b) Mostrar todas as salas que tenham projetor e ar condicionado
SELECT nome_sala FROM salas WHERE projetor = true AND ar_condicionado = true;

--c) Mostrar todas as salas do tipo laboratório que não tenham lousa digital
SELECT nome_sala FROM salas WHERE tipo_sala = 'Laboratório';

--d) Mostrar todas as salas do tipo laboratório que tenham ar condicionado
SELECT nome_sala FROM salas WHERE tipo_sala = 'Laboratório' AND ar_condicionado = true;

--e) Mostrar todas as salas que não sejam do tipo auditório
SELECT nome_sala FROM salas WHERE NOT tipo_s