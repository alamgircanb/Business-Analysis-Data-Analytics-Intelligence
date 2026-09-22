CREATE TABLE Deductions (
    EmpID Numeric(5),
    PayWeekEndDate Date,
    EI Numeric(5,2),
    CPP Numeric(5,2),
    UnionDues Numeric(5,2),
    PensionPlan Numeric(5,2),
    IncomeTax Numeric(6,2),
    CONSTRAINT pk_deductions PRIMARY KEY (EmpID, PayWeekEndDate), 
    CONSTRAINT fk_deductions_emp FOREIGN KEY (EmpID) REFERENCES Employee(EmpID) -- 
);