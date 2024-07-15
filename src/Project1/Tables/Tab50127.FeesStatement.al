table 50127 "Fees Statement"
{
    Caption = 'Fees Statement';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Receipt Number"; Code[100])
        {
            Caption = 'Receipt Number';
        }
        field(2; "Student Number"; Code[50])
        {
            Caption = 'Student Number';
        }
        field(3; Year; Code[100])
        {
            Caption = 'Year';
        }
        field(4; Semester; Code[50])
        {
            Caption = 'Semester';
        }
        field(5; "Amount Paid"; Decimal)
        {
            Caption = 'Amount Paid';
        }
    }
    keys
    {
        key(PK; "Receipt Number","Student Number")
        {
            Clustered = true;
        }
    }
}
