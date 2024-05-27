tableextension 50100 CustomerExt extends Customer
{
    fields
    {
        field(50100; AccountType; Enum "AccountType")
        {
            Caption = 'AccountType';
            DataClassification = ToBeClassified;

        }
    }

}
