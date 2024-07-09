page 50124 UnitsPoolList
{
    ApplicationArea = All;
    Caption = 'UnitsPoolList';
    PageType = List;
    SourceTable = UnitsPool;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Unit Code"; Rec."Unit Code")
                {
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }
            }
        }
    }
}
