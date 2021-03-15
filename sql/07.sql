/*
 * List all actors with Bacall Number 2;
 * That is, list all actors that have appeared in a film with an actor that has appeared in a film with 'RUSSEL BACALL',
 * but do not include actors that have Bacall Number < 2.
 */
select first_name || ' ' || last_name AS "Actor Name"
from(
	select distinct(actor_id)
	from film_actor
	where film_id in(
		select distinct(film_id) from film_actor where actor_id in(
			select distinct(actor_id) from film_actor where film_id in(
				select film_id from film_actor where actor_id = 112)
	and actor_id!=112)))as a
inner join actor using(actor_id)
where actor_id not in(
	select actor_id from film_actor where film_id in(
		select film_id from film_actor where actor_id = 112))
order by first_name || ' ' || last_name;
