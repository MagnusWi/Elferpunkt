SELECT

c.no AS gameNo,
c.date AS gameDate,
p.title AS place,
t1.title AS teamA,
t2.title As teamB

FROM `betting_challenge` AS c

JOIN `betting_places` AS p
ON c.placeId = p.id

JOIN `betting_teams` AS t1
ON c.teamIdA = t1.id

JOIN `betting_teams` AS t2
ON c.teamIdB = t2.id
