/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 */
select title
from film
where  rating = 'G' and special_features[1]= 'Trailers'
order by title desc;
