table 50113 CountiesTable
{
    Caption = 'CountiesTable';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "County Code"; Code[100])
        {
            Caption = 'County Code';
        }
        field(2; "County Name"; Text[100])
        {
            Caption = 'County Name';
        }
    }
    keys
    {
        key(PK; "County Code")
        {
            Clustered = true;
        }
    }
}
