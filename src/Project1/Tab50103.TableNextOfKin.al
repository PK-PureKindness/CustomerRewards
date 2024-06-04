table 50103 TableNextOfKin
{
    Caption = 'TableNextOfKin';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student  Number"; Code[50])
        {
            Caption = 'Student  Number';
        }
        field(2; "Full Names"; Text[100])
        {
            Caption = 'Full Names';
        }
        field(3; "Phone Number"; Integer)
        {
            Caption = 'Phone Number';
        }
        field(4; "Email Address"; Code[50])
        {
            Caption = 'Email Address';
        }
        field(5; Relationship; Enum "Relationship")
        {
            Caption = 'Relationship';
        }
    }
    keys
    {
        key(PK; "Student  Number")
        {
            Clustered = true;
        }
    }
}
