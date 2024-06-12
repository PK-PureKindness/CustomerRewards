table 50112 Relationship
{
    Caption = 'Relationship';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Relationship; Code[100])
        {
            Caption = 'Relationship';
        }
    }
    keys
    {
        key(PK; Relationship)
        {
            Clustered = true;
        }
    }
}
