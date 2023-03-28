select match.matchType as matchType,avg(match.matchDuration) as averageDuration
from `match`
group by match.matchType
ORDER BY avg(match.matchDuration);