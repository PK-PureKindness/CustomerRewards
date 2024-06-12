table 50106 TableMainStudents
{
    Caption = 'TableMainStudents';
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
        field(8; "Date of Registration"; Date)
        {
            Caption = 'Date of Registration';
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
        field(12; "Home County"; Text[30])
        {
            Caption = 'Home County';
            DataClassification = ToBeClassified;
        }
        field(13; "No. Series"; code[30])
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
    }
    keys
    {
        key(PK; "Student Number")
        {
            Clustered = true;
        }
    }
    var
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if rec."Student Number" = '' then begin
            noseries.InitSeries('STDT', xRec."No. Series", 0D, "Student Number", "No. Series");
        end;
        "Captured By" := UserId;
        "Date of Registration" := Today;
    end;
}

