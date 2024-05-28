pageextension 50100 CustomerListPageExt extends "Customer List"
{
    layout

    {
        addafter("Phone No.")
        {
            field(AccountType; Rec.AccountType)
            {
                ApplicationArea = all;
            }
        }
    }

}
