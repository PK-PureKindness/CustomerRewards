table 50126 UnitsPool
{
    Caption = 'Units';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Unit Code"; Code[50])
        {
            Caption = 'Unit Code';
        }
        field(2; "Unit Name"; Text[100])
        {
            Caption = 'Unit Name';
        }
    }
    keys
    {
        key(PK; "Unit Code")
        {
            Clustered = true;
        }
    }
}
