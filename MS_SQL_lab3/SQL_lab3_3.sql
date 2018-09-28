SELECT maker, price, pc.model FROM pc
FULL JOIN product ON pc.model != 0