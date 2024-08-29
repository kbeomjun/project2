INSERT INTO MEMBER_STATE(MS_NAME) VALUES('기간 정지'), ('사용');

INSERT INTO MEMBER(ME_ID, ME_PW, me_email, ME_MS_NAME) VALUES
('qwe123', 'qwe123', 'qwe123@naver.com', '사용'),
('asd123', 'asd123', 'asd123@naver.com', '사용'),
('zxc123', 'zxc123', 'zxc123@naver.com', '사용');
INSERT INTO MEMBER(ME_ID, ME_PW, me_email, ME_MS_NAME, me_authority) VALUES
('admin123', 'admin123', 'admin123@naver.com', '사용', 'ADMIN');

insert into personality_type(pt_code, pt_content) values
('INTJ', 'INTJ입니다.'),
('INTP', 'INTP입니다.'),
('ENTJ', 'ENTJ입니다.'),
('ENTP', 'ENTP입니다.'),
('INFJ', 'INFJ입니다.'),
('INFP', 'INFP입니다.'),
('ENFJ', 'ENFJ입니다.'),
('ENFP', 'ENFP입니다.'),
('ISTJ', 'ISTJ입니다.'),
('ISFJ', 'ISFJ입니다.'),
('ESTJ', 'ESTJ입니다.'),
('ESFJ', 'ESFJ입니다.'),
('ISTP', 'ISTP입니다.'),
('ISFP', 'ISFP입니다.'),
('ESTP', 'ESTP입니다.'),
('ESFP', 'ESFP입니다.');

# 토론방 추가(주제 3개 정도 추가)
insert into discussion_room(dr_topic) values
("오늘 밤에 파티하려고 하는데 너도 와! - 친구가 갑자기 파티에 초대 했을 때 나의 반응은?"),
("사람이 죽으면 어떻게 될까? 라는 질문을 받았을 때 나의 반응은?"),
("친구가 택배를 뜯다가 칼에 손이 베였다고 했을 때 나의 반응은?");

# 질문 추가(qu_type은 IE, NS, TF, JP 4개이고 각 유형별로 5개씩 총 20개 추가)
insert into question(qu_content, qu_type) values
('주기적으로 새로운 친구를 만든다.','IE'),
('파티나 행사에서 이미 알고 있는 사람과 대화하기보다는 주로 새로운 사람에게 먼저 자신을 소개하는 편이다.','IE'),
('관심이 가는 사람에게 다가가서 대화를 시작하기가 어렵지 않다.','IE'),
('다른 사람에게 자신이 어떤 사람으로 보일지 걱정하지 않는 편이다.','IE'),
('단체 활동에 참여하는 일을 즐긴다.','IE'),
('사후세계에 대한 질문이 흥미롭다고 생각한다.','SN'),
('예술 작품의 다양한 해석에 대해 토론하는 일에 관심이 많다.','SN'),
('결말을 자신의 방식으로 해석할 수 있는 책과 영화를 좋아한다.','SN'),
('오래전의 실수를 후회할 때가 많다.','SN'),
('상대방이 자신을 높게 평가하면 나중에 상대방이 실망하게 될까 걱정하곤 한다.','SN'),
('다른 사람이 울고 있는 모습을 보면 자신도 울고 싶어질 때가 많다.','TF'),
('압박감이 심한 환경에서 평정심을 유지하지 못하는 편이다.','TF'),
('상대방의 잘못이라는 것이 명백할 때도 상대방의 체면을 살려주기 위해 노력한다.','TF'),
('자신보다는 남의 성공을 돕는 일에서 더 큰 만족감을 느낀다.','TF'),
('사람들이 이성보다는 감정을 중시했다면 더 나은 세상이 되었으리라고 생각한다.','TF'),
('일이 잘못될 때를 대비해 여러 대비책을 세우는 편이다.','PJ'),
('하나의 프로젝트를 완전히 완료한 후 다른 프로젝트를 시작하는 편이다.','PJ'),
('일정이나 목록으로 계획을 세우는 일을 좋아한다.','PJ'),
('단계를 건너뛰는 일 없이 절차대로 일을 완수하는 편이다.','PJ'),
('일이 원하는 대로 진행될 것이라는 자신감이 있다.','PJ');