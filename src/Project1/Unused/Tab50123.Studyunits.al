table 50123 "Study units"
{
    Caption = 'Units';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Unit Code"; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Semester; Code[5])
        {
            Caption = 'Semester';
            TableRelation = "Academic Semester".Semester;
        }
        field(3; "Student Number"; Code[50])
        {
            Caption = 'Student Number';
            TableRelation = MainStudents;
            trigger OnValidate()
            var
                Student: Record MainStudents;
            begin
                Student.get("Student Number");
                "Course Code" := Student.Course;
            end;

        }
        field(4; "Course Code"; Code[50])
        {
            Caption = 'Course Code';
            TableRelation = CoursesOffered;

        }
        field(5; Year; Integer)
        {
            Caption = 'Year';
            TableRelation = "Academic Year".Year;
        }
        field(6; "Unit Name"; Text[50])
        {
            Caption = 'Unit Name';
        }
        field(7; "CAT 1"; Decimal)
        {
            Caption = 'CAT 1';
            trigger OnValidate()
            begin
                RecalculateTotal();
            end;
        }
        field(8; "CAT 2"; Decimal)
        {
            Caption = 'CAT 2';
            trigger OnValidate()
            begin
                RecalculateTotal();
            end;
        }
        field(9; "Main Exam"; Decimal)
        {
            Caption = 'Main Exam';
            trigger OnValidate()
            begin
                RecalculateTotal();
            end;
        }
        field(10; Total; Decimal)
        {
            Caption = 'Total';
            Editable = false;
        }
        field(11; "Current Semester"; Boolean)
        {
            Caption = 'Current Semester';
            Editable = false;
        }
        field(12; "Semester Code"; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                AcaSem: Record "Academic Semester";
            begin
                AcaSem.Reset();
                AcaSem.SetRange(Semester, "Semester Code");
                if AcaSem.FindFirst() then begin
                    "Current Semester" := AcaSem."Current Semester";
                    Semester := AcaSem."Semester Code";
                end;
            end;
        }
    }
    keys
    {
        key(Key1; "Unit Code")
        {
            Clustered = true;
        }
        key(Key2; "Student Number")
        {

        }
        key(Key3; "Course Code")
        {

        }
        key(Key4; Year)
        {

        }
        key(Key5; "Semester Code")
        {

        }
    }
    local procedure RecalculateTotal()
    begin
        Total := ("CAT 1" + "CAT 2") / 2 + "Main Exam";
    end;
}

