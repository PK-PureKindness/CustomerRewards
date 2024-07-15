table 50115 MainStudents
{
    Caption = 'MainStudents';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student Number"; code[50])
        {
            Caption = 'Student Number';
        }
        field(2; "ID Number"; Code[50])
        {
            Caption = 'ID Number';
            DataClassification = ToBeClassified;
        }
        field(3; "First Name"; Text[30])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(4; "Middle Name"; Text[30])
        {
            Caption = 'Middle Name';
            DataClassification = ToBeClassified;
        }
        field(5; "Sur Name"; Text[30])
        {
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
        }
        field(6; "Full Name"; Text[100])
        {
            Caption = 'Full Name';
            DataClassification = ToBeClassified;
        }
        field(7; "Captured By"; code[50])
        {
            Caption = 'Captured By';
            DataClassification = ToBeClassified;
        }
        field(8; "Date of Application"; Date)
        {
            Caption = 'Date of Acceptance';
            DataClassification = ToBeClassified;
        }
        field(9; Course; code[30])
        {
            Caption = 'Course';
            TableRelation = CoursesOffered;
        }
        field(10; "Phone Number"; code[30])
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
        }
        field(11; "Email Address"; Code[50])
        {
            Caption = 'Email Address';
            DataClassification = ToBeClassified;
        }
        field(12; "Home County"; code[100])
        {
            Caption = 'Home County';
            DataClassification = ToBeClassified;
            TableRelation = CountiesTable;
        }
        field(13; "No. Series"; code[100])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(14; "Age"; Integer)
        {
            Caption = 'Age';
            DataClassification = ToBeClassified;
        }
        field(15; "Date Of Birth"; Date)
        {
            Caption = 'Date Of Birth';
            DataClassification = ToBeClassified;
        }
        field(16; "Current Year Of Study"; Integer)
        {
            Caption = 'Current Year Of Study';
            DataClassification = ToBeClassified;
        }
        field(17; "Current Semester Of Study"; Integer)
        {
            Caption = 'Current Semester Of Study';
            DataClassification = ToBeClassified;
        }
        field(18; "No. of Students"; Integer)
        {
            DataClassification = ToBeClassified;
            /* Caption = 'No. Of Students';
             FieldClass = FlowField;
             CalcFormula = count(MainStudents); */

        }
        field(19; "Number Of Students"; Integer)
        {
            Caption = 'No. Of Students';
            FieldClass = FlowField;
            CalcFormula = count(MainStudents);
        }
    }
    keys
    {
        key(PK; "Student Number")
        {
            Clustered = true;
        }
    }
    var
        NoseriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if rec."Student Number" = '' then begin
            NoseriesMgt.InitSeries('STDT', xRec."No. Series", 0D, "Student Number", "No. Series");
        end;
        "Captured By" := UserId;
        "Date of Application" := Today;
    end;
}
