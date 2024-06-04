page 50110 NextOfKinListPage
{
    ApplicationArea = All;
    Caption = 'NextOfKinListPage';
    PageType = List;
    SourceTable = TableNextOfKin;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Full Names"; Rec."Full Names")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Names field.', Comment = '%';
                }
                field(Relationship; Rec.Relationship)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship field.', Comment = '%';
                }
                field("Student  Number"; Rec."Student  Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student  Number field.', Comment = '%';
                }
            }
        }
    }
}
