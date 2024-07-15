table 50125 "Student Financial Data"
{
    Caption = 'Student Financial Data';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student  Number"; Code[50])
        {
            Caption = 'Student  Number';
        }

        field(2; "Annual Fee Payable"; Decimal)
        {
            Caption = 'Annual Fee Payable';
        }
        field(3; "Current Semester Fee Payable "; Decimal)
        {
            Caption = 'Current Semester Fee Payable ';
        }
        field(4; "Annual Fee Paid"; Decimal)
        {
            Caption = 'Annual Fee Paid';
            //DecimalPlaces = 
        }
        field(5; "Annual Fee Balance"; Decimal)
        {
            Caption = 'Annual Fee Balance';
            Editable = false;
            /*FieldClass = FlowField;
            CalcFormula = */
        }
        field(6; "Number Of Students"; Integer)
        {
            Caption = 'No. Of Students';
            FieldClass = FlowField;
            CalcFormula = count(MainStudents);
        }
        field(7; "Number Of Applicants"; Integer)
        {
            Caption = 'No. Of Applicants';
            FieldClass = FlowField;
            CalcFormula = count(StudentsApplicationTable);
        }
        field(8; "ID NO."; Code[50])
        {
            Caption = 'Student  ID';
        }
    }
    keys
    {
        key(PK; "Student  Number", "ID NO.")
        {
            Clustered = true;
        }
    }
}
