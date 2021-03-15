/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */
select title
from film bf
inner join (select * from film tf) as tf using(title)
where bf.special_features @> ARRAY['Behind the Scenes'] and tf.special_features @> ARRAY['Trailers']
order by title;
