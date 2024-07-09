table 50119 "Academic Semester"
{
    Caption = 'Academic Semester';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Semester; Integer)
        {
            Caption = 'Semester';
            trigger OnValidate()
            var
                myInt: Integer;
            begin

            end;
        }
        field(2; Year; Integer)
        {
            Caption = 'Year';
            TableRelation = "Academic Year".Year;
        }
        field(3; "Student Number"; Code[50])
        {
            Caption = 'Student Number';
            TableRelation = MainStudents."Student Number";
        }
        field(4; "Course Code"; Code[50])
        {
            Caption = 'Course Code';
            TableRelation = CoursesOffered."Course Code";
        }
        field(5; "Current Semester"; Boolean)
        {
            Caption = 'Current Semester';
            trigger OnValidate()
            var

            begin

                AcaSem.Reset();
                AcaSem.SetRange("Current Semester", true);
                AcaSem.SetFilter(Semester, '<> %1', Rec.Semester);
                if AcaSem.FindFirst() then begin
                    repeat
                        AcaSem."Current Semester" := false;
                        AcaSem.Modify();
                    until AcaSem.Next() = 0;

                end;

            end;
        }
        field(6; "Semester Code"; Code[5])
        {
            Caption = 'Semester Code';
        }
        field(7; "Semester Name"; Text[50])
        {
            Caption = 'Semester Name';
        }
        field(8; "Fee Payable"; Decimal)
        {
            Caption = 'Fee Payabe';
        }
        field(9; "Fee Paid"; Decimal)
        {
            Caption = 'Fee Paid';
        }
    }
    keys
    {
        key(Key1; Semester, Year)
        {
            Clustered = true;
        }
        key(Key2; "Student Number")
        {

        }
        key(Key3; "Course Code")
        {

        }

        key(Key4; "Semester Code")
        {
        }
    }
    var
        AcaSem: Record "Academic Semester";
}
