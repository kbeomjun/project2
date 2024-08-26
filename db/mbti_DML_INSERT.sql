INSERT INTO MEMBER_STATE(MS_NAME) VALUES('기간 정지'), ('사용');

INSERT INTO MEMBER(ME_ID, ME_PW, ME_MS_NAME) VALUES
('qwe123', 'qwe123', '사용'),
('asd123', 'asd123', '사용'),
('zxc123', 'zxc123', '사용');
INSERT INTO MEMBER(ME_ID, ME_PW, ME_MS_NAME, me_authority) VALUES
('admin123', 'admin123', '사용', 'ADMIN');

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

# 질문 추가(qu_type은 IE, NS, TF, JP 4개이고 각 유형별로 5개씩 총 20개 추가)
