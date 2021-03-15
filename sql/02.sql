/*
 * Count the number of movies that contain each type of special feature.
 */
select distinct(unnest(special_features))as special_features, count(title)
from film
group by unnest(special_features)
order by unnest(special_features);
