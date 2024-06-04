table 50104 TableMainStudent
{
    Caption = 'TableMainStudent';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID Number"; Integer)
        {
            Caption = 'ID Number';
        }
        field(2; "Student Number"; Code[50])
        {
            Caption = 'Application Number';
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
        field(5; "Last Name"; Text[30])
        {
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
        }
        field(6; "Full Name"; Text[100])
        {
            Caption = 'Full Name';
            DataClassification = ToBeClassified;
        }
        field(7; "Captured By"; Text[50])
        {
            Caption = 'Captured By';
            DataClassification = ToBeClassified;
        }
        field(8; "Date of Registration"; Date)
        {
            Caption = 'Date of Registration';
            DataClassification = ToBeClassified;
        }
        field(9; Course; Text[30])
        {
            Caption = 'Course';
            DataClassification = ToBeClassified;
        }
        field(10; "Phone Number"; Integer)
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
    }
    keys
    {
        key(PK; "ID Number")
        {
            Clustered = true;
        }
    }
}
