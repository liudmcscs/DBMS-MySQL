select  count(player_statistic.Id) as numberOfPlayers,max(player_statistic.heals) as maxHeals
from player_statistic,`match`
where match.matchDuration> (select avg(match.matchDuration) from `match`) and match.matchId=player_statistic.matchId and player_statistic.damageDealt=0 and player_statistic.winPlacePerc=1.0;