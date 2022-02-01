SELECT * FROM enderecos;

SELECT *
FROM usuarios AS u
FULL OUTER JOIN enderecos AS e
    ON u.endereco_id = e.id;
   
SELECT *
FROM redes_sociais rs
JOIN usuario_redes_sociais urs 
	ON urs.redes_sociais_id = rs.id
JOIN usuarios u 
	ON urs.usuario_id = u.id;

SELECT *
FROM redes_sociais rs
JOIN usuario_redes_sociais urs 
	ON urs.redes_sociais_id = rs.id
JOIN usuarios u 
	ON urs.usuario_id = u.id
JOIN enderecos e 
	ON e.id = u.endereco_id;
	
SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais rs
JOIN usuario_redes_sociais urs 
	ON urs.redes_sociais_id = rs.id
JOIN usuarios u 
	ON urs.usuario_id = u.id
JOIN enderecos e 
	ON e.id = u.endereco_id;

SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais rs
JOIN usuario_redes_sociais urs 
	ON urs.redes_sociais_id = rs.id
JOIN usuarios u 
	ON urs.usuario_id = u.id
JOIN enderecos e 
	ON e.id = u.endereco_id
WHERE rs.nome = 'Youtube';

SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais rs
JOIN usuario_redes_sociais urs 
	ON urs.redes_sociais_id = rs.id
JOIN usuarios u 
	ON urs.usuario_id = u.id
JOIN enderecos e 
	ON e.id = u.endereco_id
WHERE rs.nome = 'Instagram';

SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais rs
JOIN usuario_redes_sociais urs 
	ON urs.redes_sociais_id = rs.id
JOIN usuarios u 
	ON urs.usuario_id = u.id
JOIN enderecos e 
	ON e.id = u.endereco_id
WHERE rs.nome = 'Facebook';


SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais rs
JOIN usuario_redes_sociais urs 
	ON urs.redes_sociais_id = rs.id
JOIN usuarios u 
	ON urs.usuario_id = u.id
JOIN enderecos e 
	ON e.id = u.endereco_id
WHERE rs.nome = 'TikTok';

SELECT rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais rs
JOIN usuario_redes_sociais urs 
	ON urs.redes_sociais_id = rs.id
JOIN usuarios u 
	ON urs.usuario_id = u.id
JOIN enderecos e 
	ON e.id = u.endereco_id
WHERE rs.nome = 'Twitter';