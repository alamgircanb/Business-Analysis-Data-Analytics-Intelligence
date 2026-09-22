Use Employees
CREATE TABLE Earnings (
    EmpID Numeric(5),
    PayWeekEndDate Date,
    RegEarnings Numeric(6,2),
    OTimeEarnings Numeric(6,2),
    CONSTRAINT pk_earnings PRIMARY KEY (EmpID, PayWeekEndDate),
    CONSTRAINT fk_earnings_emp FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);

