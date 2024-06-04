pageextension 50100 CustomerListPageExt extends "Customer List"
{
    layout

    {
        modify(Name)
        {
            StyleExpr = MyStyleExpr;
        }

        modify("No.")
        {
            StyleExpr = MyStyleExpr;
        }
        modify(Contact)
        {
            StyleExpr = MyStyleExpr;
        }

        addafter("Phone No.")
        {
            field(AccountType; Rec.AccountType)
            {
                ApplicationArea = all;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        MyStyleExpr := 'Standard';
        if Rec."Balance (LCY)" < 200000 then
            MyStyleExpr := 'Attention';
    end;

    var
        MyStyleExpr: Text;

}
