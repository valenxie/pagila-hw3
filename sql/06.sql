/*
 * This question and the next one are inspired by the Bacon Number:
 * https://en.wikipedia.org/wiki/Six_Degrees_of_Kevin_Bacon#Bacon_numbers
 *
 * List all actors with Bacall Number 1;
 * That is, list all actors that have appeared in a film with 'RUSSEL BACALL'.
 * Do not list 'RUSSEL BACALL', since he has a Bacall Number of 0.
 */
select first_name || ' ' || last_name AS "Actor Name"
from (
	select  distinct(actor_id)
	from film_actor
	where film_id in(
		select film_id
		from film_actor
		where actor_id=112
		)
	and actor_id!=112
	)as filtered
inner join actor using(actor_id)
order by first_name || ' ' || last_name;
