page 50110 NextOfKinListPage
{
    ApplicationArea = All;
    Caption = 'NextOfKinListPage';
    PageType = List;
    SourceTable = NextOfKins;
    UsageCategory = Lists;
    CardPageId = NextOfKinCardPage;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student  Number"; Rec."Student  Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student  Number field.', Comment = '%';
                    Editable = false;
                }
                field("ID Number"; Rec."ID Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID  Number field.', Comment = '%';
                }

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

            }
        }
    }
}
