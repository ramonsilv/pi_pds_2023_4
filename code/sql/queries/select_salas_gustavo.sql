---a)
SELECT * FROM salas
ORDER BY nome_sala

---b)
SELECT * FROM salas
WHERE projetor = true and ar_condicionado = true

---c)
SELECT * FROM salas
WHERE tipo_sala = 'Laboratório' and lousa_digital = false

---d)
SELECT * FROM salas
WHERE tipo_sala = 'Laboratório' and ar_condicionado = true

---e)
SELECT * FROM salas
WHERE tipo_sala NOT IN ('Laboratório')