
/*
The contest leaderboard is stored in a table leaderboard with the following columns:

id: unique id of the participant;
name: the name of the participant;
score: the score the participant achieved in the competition.
The resulting table should contain the names of the participants who took the 4th to 8th places inclusive, sorted in descending order of their places. If there are fewer than 8 participants, the results should contain those who ranked lower than 3rd place.

It is guaranteed that there are at least 3 prize winners in the leaderboard and that all participants have different scores.
*/

--Solution:
SELECT name
	FROM (SELECT name, RANK() OVER (ORDER BY score DESC) AS ranking
			FROM leaderboard
	) as sub1
	
	WHERE ranking BETWEEN 4 AND 8;
