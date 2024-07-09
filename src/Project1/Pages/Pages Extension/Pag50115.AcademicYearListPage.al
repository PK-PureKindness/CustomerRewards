page 50115 "Academic Year List Page"
{
    ApplicationArea = All;
    Caption = 'Academic Year List Page';
    PageType = List;
    SourceTable = "Academic Year";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student Number"; Rec."Student Number")
                {
                    ToolTip = 'Specifies the value of the Student Number field.', Comment = '%';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'Specifies the value of the Course Code field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field("Year Name"; Rec."Year Name")
                {
                    ToolTip = 'Specifies the value of the Year Name field.', Comment = '%';
                }
                field("Annual Fee"; Rec."Annual Fee")
                {
                    ToolTip = 'Specifies the value of the Annual Fee field.', Comment = '%';
                }
            }
        }
    }
}
