table 50117 NextOfKins
{
    Caption = 'NextOfKins';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student  Number"; Code[50])
        {
            Caption = 'Student Number';
        }
        field(2; "First Name"; Text[30])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Middle Name"; Text[30])
        {
            Caption = 'Middle Name';
            DataClassification = ToBeClassified;
        }
        field(4; "Sur Name"; Text[30])
        {
            Caption = 'SurName';
            DataClassification = ToBeClassified;
        }
        field(5; "Full Names"; Text[100])
        {
            Caption = 'Full Names';
        }
        field(6; "Phone Number"; code[50])
        {
            Caption = 'Phone Number';
        }
        field(7; "Email Address"; Text[50])
        {
            Caption = 'Email Address';
        }
        field(8; Relationship; code[100])
        {
            Caption = 'Relationship';
            TableRelation = Relationship;
        }
        field(9; "ID Number"; code[100])
        {
            Caption = 'ID Number';

        }
    }
    keys
    {
        key(PK; "Student  Number", "ID Number")
        {
            Clustered = true;
        }
    }
}
