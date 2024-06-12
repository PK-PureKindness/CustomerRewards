page 50112 RelationshipListPage
{
    ApplicationArea = All;
    Caption = 'RelationshipListPage';
    PageType = List;
    SourceTable = Relationship;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Relationship; Rec.Relationship)
                {
                    ToolTip = 'Specifies the value of the Relationship field.', Comment = '%';
                }
            }
        }
    }
}
