page 50133 "Receipt List"
{
    ApplicationArea = All;
    Caption = 'Receipt List';
    PageType = List;
    SourceTable = "Receipt Table";
    UsageCategory = Lists;
    CardPageId = "Receipt Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student No."; Rec."Student No.")
                {
                    ToolTip = 'Specifies the value of the Student No. field.', Comment = '%';
                }
                field("Receipt Number"; Rec."Receipt Number")
                {
                    ToolTip = 'Specifies the value of the Receipt Number field.', Comment = '%';
                }
                field("Received Amount"; Rec."Received Amount")
                {
                    ToolTip = 'Specifies the value of the Received Amount field.', Comment = '%';
                }
                field("Received Bank"; Rec."Received Bank")
                {
                    ToolTip = 'Specifies the value of the Received Bank field.', Comment = '%';
                }
                field(Posted; Rec.Posted)
                {
                    ToolTip = 'Specifies the value of the Posted field.', Comment = '%';
                }
            }
        }
    }
}
