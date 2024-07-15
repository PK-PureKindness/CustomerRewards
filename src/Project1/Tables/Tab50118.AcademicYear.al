table 50118 "Academic Year"
{
    Caption = 'Academic Year';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Year; Integer)
        {
            Caption = 'Year';
        }
        field(2; "Course Code"; Code[50])
        {
            Caption = 'Course Code';
            TableRelation = CoursesOffered."Course Code";
        }
        field(3; "Student Number"; Code[100])
        {
            Caption = 'Student Number';
            TableRelation = MainStudents."Student Number";
        }
        field(4; "Year Name"; Text[30])
        {
            Caption = 'Year Name';
        }
        field(5; "Annual Fee"; Decimal)
        {
            Caption = 'Annual Fee';
            FieldClass = FlowField;
            CalcFormula = sum("Academic Semester"."Fee Payable" where(Year = field(Year)));
        }
    }
    keys
    {
        key(Key1; Year, "Course Code", "Student Number")
        {
            Clustered = true;
        }

    }
}
