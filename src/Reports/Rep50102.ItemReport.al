report 50102 "Item Report"
{
    ApplicationArea = All;
    Caption = 'Item Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Item Report.RDL';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Item; Item)
        {
            column(NoofSubstitutes; "No. of Substitutes")
            {
            }
            column(Profit; "Profit %")
            {
            }
            column(PurchasesQty; "Purchases (Qty.)")
            {
            }
            column(UnitCost; "Unit Cost")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
