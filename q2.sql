select player_statistic.Id as Id,player_statistic.matchId as matchId,player_statistic.damageDealt as damageDealt
from player_statistic
where player_statistic.damageDealt between 2000 and 2010;