select  match.matchType as matchType,COUNT(match.matchType) as count
from `match`
where match.matchType LIKE '%fpp%'
GROUP BY match.matchType
ORDER BY COUNT(match.matchType);
