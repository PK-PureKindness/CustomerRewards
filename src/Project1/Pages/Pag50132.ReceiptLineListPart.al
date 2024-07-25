page 50132 "Receipt Line ListPart"
{
    ApplicationArea = All;
    Caption = 'Receipt Line ListPart';
    PageType = ListPart;
    SourceTable = "Receipt Line Table";

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
                field("Receipt Number."; Rec."Receipt Number")
                {
                    ToolTip = 'Specifies the value of the Receipt Number field.', Comment = '%';
                }
                field("Receipt Type"; Rec."Receipt Type")
                {
                    ToolTip = 'Specifies the value of the Receipt Type field.', Comment = '%';
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.', Comment = '%';
                }
                field("Receipt Narration"; Rec."Receipt Narration")
                {
                    ToolTip = 'Specifies the value of the Receipt Narration field.', Comment = '%';
                }
            }
        }
    }
}
