select  player_statistic.matchId as matchId,player_statistic.DBNOs as DBNOs
from player_statistic
ORDER BY player_statistic.DBNOs desc
LIMIT 20;