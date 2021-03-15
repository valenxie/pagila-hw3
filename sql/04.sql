/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */
select distinct(first_name) || ' ' || last_name AS "Actor Name"
from actor
inner join film_actor using(actor_id)
inner join film using(film_id)
where film.special_features @> ARRAY['Behind the Scenes']
order by first_name || ' ' || last_name;
