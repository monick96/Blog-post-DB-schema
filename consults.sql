USE blog_post;
/*SELECT * FROM posts;

SELECT title, post_date, status FROM posts;

SELECT title AS header, post_date AS published, status AS state 
FROM posts;

SELECT COUNT(*) AS num_of_posts
FROM posts;

join left right on posts

//todos los usuarios y unela por fk a posts tengan o no post asociados

SELECT * FROM users LEFT JOIN posts ON users.id = posts.user_id;

//todos los usuarios que no tengan post asociado, dejar fuera los que si tengan post asociado

SELECT * FROM users LEFT JOIN posts ON users.id = posts.user_id
WHERE posts.user_id IS NULL;

//todos los posts tengan o no usuario 
SELECT * FROM users RIGHT JOIN posts ON users.id = posts.user_id;

//todos los post que no tengan usuario asociado, dejar fuera los que si tengan usuario

SELECT * FROM users RIGHT JOIN posts ON users.id = posts.user_id
WHERE posts.user_id IS NULL;

// solo usuarios con post y post con usuarios, dependencia, coincidencia de ambos lados

SELECT * FROM users INNER JOIN posts ON users.id = posts.user_id;

//sentencia que imita a FULL OUTER join trae el universo de las dos tablas. todos los usuarios que tengan post asociados y todos los post tengan o no usuario asociado
SELECT * FROM users LEFT JOIN posts ON users.id = posts.user_id
UNION
SELECT * FROM users RIGHT JOIN posts ON users.id = posts.user_id;

//diferencia simetrica, trae en una tabla los users sin post y los post sin user. lo que hay en una tabla pero no en la otra, y visceversa.
SELECT * FROM users LEFT JOIN posts ON users.id = posts.user_id
WHERE posts.user_id IS NULL
UNION
SELECT * FROM users RIGHT JOIN posts ON users.id = posts.user_id
WHERE posts.user_id IS NULL;

//sentencia where funciona como filtro para nuestros registros


SELECT * FROM posts
WHERE id <10;

SELECT * FROM posts
WHERE status != 'inactivo';

//post con titulo que contenga ""nuevo"
SELECT * FROM posts
WHERE title  like '%nuevo%';

/post con el titulo que termine con meterial
SELECT * FROM posts
WHERE title  like '%material';

//post con el titulo que comience con escandalo
SELECT * FROM posts
WHERE title  like 'escandolo%';

SELECT * FROM posts
WHERE post_date > '2025-01-01';

//rangos considerando ambos rangos de filtro 
SELECT * FROM posts
WHERE post_date BETWEEN '2025-01-01' AND '2025-12-31';

//usar YEAR()
SELECT * FROM posts
WHERE  YEAR(post_date) BETWEEN '2023' AND '2024';

//usar MONtH()
SELECT * FROM posts
WHERE  MONTH(post_date) = '01';

SELECT * FROM posts
WHERE user_id IS NOT NULL;

SELECT * FROM posts
WHERE user_id IS NOT NULL
AND status = "activo";

SELECT * FROM posts
WHERE user_id IS NOT NULL
AND status = "activo"
AND id <10
AND category_id = 2
AND YEAR(post_date) = '2025';

SELECT status , COUNT(*) post_quantity
FROM posts
GROUP BY status;

*/



























