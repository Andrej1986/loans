DROP TABLE IF EXISTS loans;

CREATE TABLE `loans`(
    `loan_number` INT AUTO_INCREMENT,
    `customer_id` INT NOT NULL,
    `start_dt` DATE NOT NULL,
    `loan_type` VARCHAR(100) NOT NULL,
    `total_loan` INT NOT NULL,
    `amount_paid` INT NOT NULL,
    `outstanding_amount` INT NOT NULL,
    `create_dt` DATE DEFAULT NULL,
    PRIMARY KEY (`loan_number`)
    );

INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`, `create_dt`)
    VALUES (1, '2020-10-13', 'Home', 200000, 50000, 150000, '2020-10-13');

INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`, `create_dt`)
    VALUES (1, '2020-06-06', 'Vehicle', 40000, 10000, 30000, '2020-06-06');

INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`, `create_dt`)
    VALUES (1, '2021-02-14', 'Home', 50000, 10000, 40000, '2018-02-14');

INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`, `create_dt`)
    VALUES (1, '2018-02-14', 'Home', 10000, 3500, 6500, '2018-02-14');