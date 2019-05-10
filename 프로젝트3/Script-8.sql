/* 고객 테이블 */
CREATE TABLE ccustom(
c_num NUMBER(20) PRIMARY KEY,
c_id VARCHAR2(30) UNIQUE,
c_password VARCHAR2(30) NOT NULL,
c_name VARCHAR2(15) NOT NULL,
c_phoneNum VARCHAR2(20) NOT NULL,
c_mail VARCHAR2(30) NOT NULL,
c_birth DATE NOT NULL,
c_add VARCHAR2(30)
);


SELECT * FROM ccustom;

/* 물품 테이블 */
CREATE TABLE cpro(
p_num NUMBER(20) PRIMARY KEY,
p_sort VARCHAR2(30) NOT NULL,
p_name VARCHAR2(20)NOT NULL,
p_price NUMBER(20) NOT NULL,
p_image VARCHAR2(20)
);

SELECT * FROM cpro;

/* 물품 옵션 */
CREATE TABLE poption(
p_num NUMBER(20) REFERENCES CPRO(p_num),
po_num NUMBER(20) PRIMARY KEY,
po_size VARCHAR2(10),
po_color VARCHAR2(10),
po_addprice NUMBER(20),
po_lastcnt NUMBER(20)
);

SELECT * FROM POPTION;

/* 후기 */
CREATE TABLE cepilogue(
p_num NUMBER(20) REFERENCES CPRO(p_num),
c_num NUMBER(20) REFERENCES CCUSTOM(c_num),
ce_num NUMBER(20) PRIMARY KEY,
ce_title VARCHAR2(30) DEFAULT '이거 한번 보세요',
ce_content VARCHAR2(40),
ce_image VARCHAR2(30),
ce_point NUMBER(10)
);

SELECT * FROM cepilogue;

/* QnA */
CREATE TABLE qna(
p_num NUMBER(20) REFERENCES CPRO(p_num),
c_num NUMBER(20) REFERENCES CCUSTOM(c_num),
q_num NUMBER(20) PRIMARY KEY,
q_title VARCHAR2(30) NOT NULL,
q_content VARCHAR2(70),
q_image VARCHAR2(30)
);

SELECT * FROM qna;

/* 즉시 구매 */
CREATE TABLE buynow(
p_num NUMBER(20) REFERENCES CPRO(p_num),
c_num NUMBER(20) REFERENCES CCUSTOM(c_num),
b_num NUMBER(20) PRIMARY KEY,
b_buydate DATE DEFAULT sysdate,
b_buystate VARCHAR2(20)
);

SELECT * FROM buynow;

/* 장바구니 */
CREATE TABLE buycart(
p_num NUMBER(20) REFERENCES CPRO(p_num),
c_num NUMBER(20) REFERENCES CCUSTOM(c_num),
bc_num NUMBER(20) PRIMARY KEY
);

SELECT * FROM buycart;

/*무통장 계좌*/
CREATE TABLE banknum(
bank_num NUMBER(10) PRIMARY KEY,
bank_name VARCHAR(20),
bank_account VARCHAR2(40)
);















