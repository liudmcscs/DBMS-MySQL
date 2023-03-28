select  player_statistic.Id as Id,avg(player_statistic.kills) as avgKills
from player_statistic,`match`
where match.numGroups<=10 and match.matchId=player_statistic.matchId
group BY player_statistic.Id 
ORDER BY avg(player_statistic.kills) desc
LIMIT 20;