select question.*, count(qa_num) as qu_answerCount from question left join question_answer on qa_qu_num = qu_num where qu_type = "TF" group by qu_num ;

select 
	row_number() over(order by qu_num) as qu_rank,
    question.*
from 
	question
limit 10, 5;