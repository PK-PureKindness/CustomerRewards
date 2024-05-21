pageextension 50100 Customer extends "Customer List"
{
    layout

    {
        addafter(Name)
        {
            field(Address; Rec.Address)
            {
                ApplicationArea = all;
            }
        }
    }
}
