select avg(ttteamRoadKills) as teamRoadKills,avg(ttavgWinPlacePerc) as avgWinPlacePerc
from
(
	SELECT player_statistic.groupId as tempgro,SUM(player_statistic.roadKills) as ttteamRoadKills, avg(player_statistic.winPlacePerc) as ttavgWinPlacePerc
	from player_statistic,`match`
	where (match.matchType='squad' or match.matchType='squad-fpp') and match.matchId=player_statistic.matchId
	group by player_statistic.groupId
) as tot
group by tot.ttteamRoadKills
order by tot.ttteamRoadKills desc;