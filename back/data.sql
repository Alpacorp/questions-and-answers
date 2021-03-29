CREATE TABLE questions (
    iq_q INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_q TIMESTAMP NOT NULL,
    email_q VARCHAR(50) NOT NULL,
    name_q VARCHAR(70) NOT NULL,
    question VARCHAR(280) NOT NULL,
    category VARCHAR(50) NOT NULL
);

CREATE TABLE answers (
    id_a INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_q INT(11) NOT NULL,
    date_a TIMESTAMP NOT NULL,
    email_a VARCHAR(50) NOT NULL,
    name_a VARCHAR(70) NOT NULL,
    answer VARCHAR(280) NOT NULL
);

ALTER TABLE answers
ADD CONSTRAINT fk_q FOREIGN KEY (id_q) 
REFERENCES questions(iq_q) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

INSERT INTO questions VALUES (null, null, 'alejo@gmail.com', 'Alejandro Palacios', '¿Cuanto es 2+2?', 'Técnicas');

INSERT INTO answers VALUES (null, 1, null, 'zorro@gmail.com', 'Karen Palacios', '4');

SELECT * FROM questions RIGHT JOIN answers ON questions.id_q = answers.id_q UNION SELECT * FROM questions LEFT JOIN answers ON questions.id_q = answers.id_q