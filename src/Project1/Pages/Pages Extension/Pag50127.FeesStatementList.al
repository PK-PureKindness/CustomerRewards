page 50127 "Fees Statement List"
{
    ApplicationArea = All;
    Caption = 'Fees Statement List';
    PageType = List;
    SourceTable = "Fees Statement";
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
                    Editable = false;
                }
                field("Receipt Number"; Rec."Receipt Number")
                {
                    ToolTip = 'Specifies the value of the Receipt Number field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field("Amount Paid"; Rec."Amount Paid")
                {
                    ToolTip = 'Specifies the value of the Amount Paid field.', Comment = '%';
                }
            }
        }
    }
}
