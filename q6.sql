select (player_statistic.walkDistance+player_statistic.swimDistance+player_statistic.rideDistance) as totalDistance,player_statistic.walkDistance as walkDistance,player_statistic.swimDistance as swimDistance,player_statistic.rideDistance as rideDistance
from player_statistic,
(
select player_statistic.Id as tempmid
from player_statistic
WHERE player_statistic.walkDistance>0 and player_statistic.swimDistance>0 and player_statistic.rideDistance>0
group by player_statistic.Id
)as temp
WHERE player_statistic.Id=tempmid 
ORDER BY totalDistance desc
LIMIT 10;