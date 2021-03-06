SET IDENTITY_INSERT CURRENCY ON
INSERT INTO CURRENCY
(CURRENCY_ID, CURRENCY_DESC, CURRENCY_MNEMONIC, CURRENCY_THOUSAND_SEPARATOR, CURRENCY_DECIMAL_SEPARATOR)
VALUES(1000, 'PESOS ARGENTINOS', 'ARS', '.', ',');
INSERT INTO CURRENCY
(CURRENCY_ID, CURRENCY_DESC, CURRENCY_MNEMONIC, CURRENCY_THOUSAND_SEPARATOR, CURRENCY_DECIMAL_SEPARATOR)
VALUES(2000, 'DOLARES ESTADOUNIDENSES', 'USD', '.', ',');
INSERT INTO CURRENCY
(CURRENCY_ID, CURRENCY_DESC, CURRENCY_MNEMONIC, CURRENCY_THOUSAND_SEPARATOR, CURRENCY_DECIMAL_SEPARATOR)
VALUES(3000, 'EUROS', 'EUR', '.', ',');

SET IDENTITY_INSERT CURRENCY OFF

SET IDENTITY_INSERT PAYMENT_TYPE ON
INSERT INTO PAYMENT_TYPE
(PAYMENT_TYPE_ID, PAYMENT_TYPE_DESC, PAYMENT_TYPE_NOMENCLATURE, CLIENT_CODE, PAYMENT_TYPE_IS_ACTIVE)VALUES
(2000, 'TARJETA DE CREDITO', 'TC', 'TA', 0),
(3000, 'MERCADO PAGO', 'MP', 'MPC', null),
(4000, 'DEBITO EN CUENTA', 'DCU', '89503', 2);
SET IDENTITY_INSERT PAYMENT_TYPE OFF

SET IDENTITY_INSERT BANK ON
INSERT INTO BANK (BANK_ID, BANK_DESCRIPTION) VALUES
(1, 'BANCO DE GALICIA Y BUENOS AIRES')
,(2, 'BANCO DE LA NACION ARGENTINA')
,(3, 'BANCO DE LA PROVINCIA DE BUENOS AIRES')
,(4, 'CITIBANK')
,(5, 'BBVA BANCO FRANCES')
,(6, 'BANCO SUPERVIELLE')
;
SET IDENTITY_INSERT BANK OFF

SET IDENTITY_INSERT PARTY ON
INSERT INTO PARTY (PARTY_ID, FIRST_NAME, LAST_NAME) VALUES
(1, 'Omar', 'Barra'),
(2, 'Maru', 'Elen')
;
SET IDENTITY_INSERT PARTY OFF

SET IDENTITY_INSERT PAYMENT_TERM ON
INSERT INTO PAYMENT_TERM (PAYMENT_TERM_ID,PARTY_ID,PAYMENT_TYPE_ID,CREDIT_CARD_ID,CURRENCY_ID,ACCOUNT_NBR,INTER_ACCOUNT_NBR,EXPIRATION,PAYMENT_KEY,BANK_ID,BANK_BRANCH_ID,PERIOD_ID) VALUES
(1,1,4000,NULL,1000,NULL,'l/K51JlPpOAOU0P+sFC6Zo51if0Bti7j6Qc+/KicHEk=',NULL,NULL,1,1,5)
,(2,2,2000,1,1000,'gHkPTeZmOZq6nze2Aw50uC8ExDfKctgqh6QAYt96QLE=','140671213-x94NSvtI9FDyNs','2024-08-01 00:00:00.000','313545816',1,1,5)
,(3,1,4000,NULL,1000,NULL,'h6fj5zcVAWR4sqUoN9FBXASr0czCTwl52E00wdJf+Zs=',NULL,NULL,2,1,5)
,(4,1,4000,NULL,1000,NULL,'nNlInXWCEDIt2gOLVVDKm1PCcpk5W62VDof3hjSbOMs=',NULL,NULL,3,1,5)
,(5,2,2000,1,1000,'qMnGF8608NVgKR74+qLkRuuM67KRemmSOB1o4ZIs7RA=','173628080-xk0w1S4pIErUsg','2025-01-01 00:00:00.000','308715644',NULL,1,5)
;

SET IDENTITY_INSERT PAYMENT_TERM OFF


SET IDENTITY_INSERT CONTRACT_HEADER ON
INSERT INTO CONTRACT_HEADER
(CONTRACT_ID, AGENCY_ID, INSURER_ID, INSURED_PARTY_ID, HOLDER_PARTY_ID, COVERAGE_PLAN_ID, CONTRACT_FROM, CONTRACT_TO, PAYMENT_PLAN_ID)
VALUES(218, 1, 1017, 10910, 10910, 3, '2019-12-09 00:00:00.000', NULL, 1000);
INSERT INTO CONTRACT_HEADER
(CONTRACT_ID, AGENCY_ID, INSURER_ID, INSURED_PARTY_ID, HOLDER_PARTY_ID, COVERAGE_PLAN_ID, CONTRACT_FROM, CONTRACT_TO, PAYMENT_PLAN_ID)
VALUES(319, 1, 1017, 10903, 10903, 3, '2019-11-19 00:00:00.000', NULL, 1000);
INSERT INTO CONTRACT_HEADER
(CONTRACT_ID, AGENCY_ID, INSURER_ID, INSURED_PARTY_ID, HOLDER_PARTY_ID, COVERAGE_PLAN_ID, CONTRACT_FROM, CONTRACT_TO, PAYMENT_PLAN_ID)
VALUES(324, 1, 1017, 10998, 10998, 3, '2019-12-19 00:00:00.000', NULL, 1000);
INSERT INTO CONTRACT_HEADER
(CONTRACT_ID, AGENCY_ID, INSURER_ID, INSURED_PARTY_ID, HOLDER_PARTY_ID, COVERAGE_PLAN_ID, CONTRACT_FROM, CONTRACT_TO, PAYMENT_PLAN_ID)
VALUES(173, 1, 1017, 11001, 11001, 3, '2019-12-02 00:00:00.000', NULL, 1000);
INSERT INTO CONTRACT_HEADER
(CONTRACT_ID, AGENCY_ID, INSURER_ID, INSURED_PARTY_ID, HOLDER_PARTY_ID, COVERAGE_PLAN_ID, CONTRACT_FROM, CONTRACT_TO, PAYMENT_PLAN_ID)
VALUES(347, 1, 1017, 9999, 9999, 3, '2019-11-15 16:37:22.000', NULL, 1000);
SET IDENTITY_INSERT CONTRACT_HEADER OFF

INSERT INTO CONTRACT_PAYMENT (CONTRACT_HEADER_ID, PAYMENT_TERM_ID) VALUES
(218, 1),
(319, 2),
(324, 3),
(173, 4),
(347, 5);