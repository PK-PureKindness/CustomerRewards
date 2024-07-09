table 50122 Unit
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Unit Code"; Code[100])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Semester"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "Academic Semester"."Semester Code";
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
    }

    keys
    {
        key(Key1; "Unit Code", Semester)
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
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    local procedure RecalculateTotal()
    begin
        Total := (("CAT 1" + "CAT 2") / 2) + "Main Exam";
    end;
}