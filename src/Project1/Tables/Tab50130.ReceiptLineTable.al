table 50130 "Receipt Line Table"
{
    Caption = 'Receipt Line Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Receipt Number"; Code[20])
        {
            Caption = 'Receipt Number';
        }
        field(2; "Receipt Type"; Text[50])
        {
            Caption = 'Receipt Type';
        }
        field(3; "Student No."; Code[20])
        {
            Caption = 'Student No.';
        }
        field(4; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(5; "Receipt Narration"; Text[50])
        {
            Caption = 'Receipt Narration';
        }
    }
    keys
    {
        key(PK; "Student No.", "Receipt Number", "Receipt Type")
        {
            Clustered = true;
        }
    }
}
