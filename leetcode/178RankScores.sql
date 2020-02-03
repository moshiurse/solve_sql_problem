-- Though its not accepted . It works on my mysql server
SET @row_number = 0;
select a.Score, b.count as Rank from Scores a
left join 
(select Score, (@row_number:=@row_number + 1)as count from (select distinct Score from Scores
order by Score DESC)a ) b on b.Score = a.Score
order by Score desc
