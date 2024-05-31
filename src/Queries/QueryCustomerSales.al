query 50103 "Customer Sales By Quantity"
{
    QueryType = Normal;
    OrderBy = descending(Quantity);

    elements
    {
        dataitem(Cus; Customer)
        {
            column(CustNo_; "No.")
            {

            }
            column(CustName; Name)
            {

            }
            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "sell-to Customer No." = Cus."No.";
                SqlJoinType = InnerJoin;
                column(Quantity; Quantity)
                {

                }
            }

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}
